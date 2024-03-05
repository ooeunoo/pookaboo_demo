import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pookaboo/layers/auth/domain/usecases/auth_usecase.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase _authUseCase;

  StreamSubscription<User?>? _userSubscription;

  AuthBloc(this._authUseCase) : super(const _Initial()) {
    on<_InitialCheckRequestedEvent>(_onInitialAuthChecked);
    on<_AuthLogoutButtonPressed>(_onLogoutButtonPressed);
    on<_AuthOnCurrentUserChanged>(_onCurrentUserChanged);
    on<_SignInWithGoogleEvent>(_onSignInWithGoogle);
    on<_SignInWithKakaoEvent>(_onSignInWithKakao);
    on<_SignInWithAppleEvent>(_onSignInWithApple);
    on<_SignUpWithEmailAndPassword>(_onSignUpWithEmailAndPassword);
    on<_SignInWithEmailAndPassword>(_onSignInWithEmailAndPassword);

    _startUserSubscription();
  }

  void _onSignInWithKakao(
      _SignInWithKakaoEvent event, Emitter<AuthState> emit) async {
    emit(const _LoadInProgress());

    try {
      await _authUseCase.signInWithKakao();
      User? user = _authUseCase.getSignedInUser();
      if (user != null) {
        emit(_AuthUserAuthenticated(user));
      }
    } catch (_) {
      log.e(_);
      emit(const _AuthUserUnauthenticated());
    }
  }

  void _onSignInWithApple(
      _SignInWithAppleEvent event, Emitter<AuthState> emit) {}

  Future<void> _onSignInWithGoogle(
      _SignInWithGoogleEvent event, Emitter<AuthState> emit) async {
    emit(const _LoadInProgress());

    try {
      _authUseCase.signInWithGoogle();
      User? user = _authUseCase.getSignedInUser();
      if (user != null) {
        emit(_AuthUserAuthenticated(user));
      }
    } catch (_) {
      emit(const _AuthUserUnauthenticated());
    }
  }

  void _onSignUpWithEmailAndPassword(
      _SignUpWithEmailAndPassword event, Emitter<AuthState> emit) {
    emit(const _LoadInProgress());

    try {
      _authUseCase.signUpWithEmailAndPassword(
          email: event.email, password: event.password);
      emit(_AuthUserAuthenticated(_authUseCase.getSignedInUser()!));
    } catch (_) {
      emit(const _AuthUserUnauthenticated());
    }
  }

  void _onSignInWithEmailAndPassword(
      _SignInWithEmailAndPassword event, Emitter<AuthState> emit) {
    emit(const _LoadInProgress());

    try {
      _authUseCase.signInWithEmailAndPassword(
          email: event.email, password: event.password);
      User? user = _authUseCase.getSignedInUser();
      if (user != null) {
        emit(_AuthUserAuthenticated(user));
      }
    } catch (_) {
      emit(const _AuthUserUnauthenticated());
    }
  }

  Future<void> _onInitialAuthChecked(
      _InitialCheckRequestedEvent event, Emitter<AuthState> emit) async {
    // User? signedInUser = const User(
    //     id: '', appMetadata: {}, userMetadata: {}, aud: '', createdAt: '');
    // emit(_AuthUserAuthenticated(signedInUser));
    User? signedInUser = _authUseCase.getSignedInUser();
    signedInUser != null
        ? emit(_AuthUserAuthenticated(signedInUser))
        : emit(const _AuthUserUnauthenticated());
  }

  Future<void> _onLogoutButtonPressed(
      _AuthLogoutButtonPressed event, Emitter<AuthState> emit) async {
    await _authUseCase.signOut();
  }

  Future<void> _onCurrentUserChanged(
          _AuthOnCurrentUserChanged event, Emitter<AuthState> emit) async =>
      event.user != null
          ? emit(_AuthUserAuthenticated(event.user!))
          : emit(const _AuthUserUnauthenticated());

  void _startUserSubscription() => _userSubscription = _authUseCase
      .getCurrentUser()
      .listen((user) => add(_AuthOnCurrentUserChanged(user)));

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
