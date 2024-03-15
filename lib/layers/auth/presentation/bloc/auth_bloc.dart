import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/layers/auth/domain/usecases/auth_usecase.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase _authUseCase;

  StreamSubscription<User?>? _userSubscription;

  AuthBloc(this._authUseCase) : super(InitialState()) {
    on<InitialCheckRequestedEvent>(_onInitialCheckedRequestEvent);
    on<SignInWithKakaoEvent>(_onSignInWithKakaoEvent);
    on<ChangedUserEvent>(_onChangedUserEvent);
    on<LogoutEvent>(_onLogoutEvent);
    on<UpdateUserEvent>(_onUpdatEvent);

    _startUserSubscription();
  }

  Future<void> _onInitialCheckedRequestEvent(
      InitialCheckRequestedEvent event, Emitter<AuthState> emit) async {
    User? signedInUser = _authUseCase.getSignedInUser();
    signedInUser != null
        ? emit(AuthenticatedState(user: signedInUser))
        : emit(UnAuthenticatedState());
    emit(UnAuthenticatedState());
  }

  Future<void> _onSignInWithKakaoEvent(
      SignInWithKakaoEvent event, Emitter<AuthState> emit) async {
    emit(LoadInProgressState());

    try {
      bool response = await _authUseCase.signInWithKakao();
      User? user = _authUseCase.getSignedInUser();

      if (response && user != null) {
        emit(AuthenticatedState(user: user));
      }
    } catch (_) {
      emit(UnAuthenticatedState());
    }
  }

  Future<void> _onChangedUserEvent(
      ChangedUserEvent event, Emitter<AuthState> emit) async {
    event.user != null
        ? emit(AuthenticatedState(user: event.user!))
        : emit(UnAuthenticatedState());
  }

  Future<void> _onLogoutEvent(
      LogoutEvent event, Emitter<AuthState> emit) async {
    try {
      await _authUseCase.signOut();
      emit(UnAuthenticatedState());
    } catch (e) {}
  }

  Future<void> _onUpdatEvent(
      UpdateUserEvent event, Emitter<AuthState> emit) async {}

  void _startUserSubscription() => _userSubscription = _authUseCase
      .getCurrentUser()
      .listen((user) => add(ChangedUserEvent(user: user)));

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
