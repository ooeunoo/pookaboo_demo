// import 'dart:async';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:pookaboo/layers/auth/domain/usecases/auth_usecase.dart';
// import 'package:pookaboo/shared/constant/enum.dart';
// import 'package:pookaboo/shared/utils/logging/log.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// part 'auth_state.dart';
// part 'auth_event.dart';
// part 'auth_bloc.freezed.dart';

// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   final AuthUseCase _authUseCase;

//   StreamSubscription<User?>? _userSubscription;

//   AuthBloc(this._authUseCase) : super(const _Initial()) {
//     on<_InitialCheckRequestedEvent>(_onInitialAuthChecked);
//     on<_AuthLogoutButtonPressed>(_onLogoutButtonPressed);
//     on<_AuthOnCurrentUserChanged>(_onCurrentUserChanged);
//     on<_SignInWithGoogleEvent>(_onSignInWithGoogle);
//     on<_SignInWithKakaoEvent>(_onSignInWithKakao);
//     on<_SignInWithAppleEvent>(_onSignInWithApple);
//     on<_SignUpWithEmailAndPassword>(_onSignUpWithEmailAndPassword);
//     on<_SignInWithEmailAndPassword>(_onSignInWithEmailAndPassword);
//     on<_UpdateUserEvent>(_onUpdateUser);

//     _startUserSubscription();
//   }

//   void _onSignInWithKakao(
//       _SignInWithKakaoEvent event, Emitter<AuthState> emit) async {
//     emit(const _LoadInProgress());

//     try {
//       await _authUseCase.signInWithKakao();
//       User? user = _authUseCase.getSignedInUser();
//       if (user != null) {
//         emit(_AuthUserAuthenticated(user));
//       }
//     } catch (_) {
//       log.e(_);
//       emit(const _AuthUserUnauthenticated());
//     }
//   }

//   void _onSignInWithApple(
//       _SignInWithAppleEvent event, Emitter<AuthState> emit) {}

//   Future<void> _onSignInWithGoogle(
//       _SignInWithGoogleEvent event, Emitter<AuthState> emit) async {
//     emit(const _LoadInProgress());

//     try {
//       _authUseCase.signInWithGoogle();
//       User? user = _authUseCase.getSignedInUser();
//       if (user != null) {
//         emit(_AuthUserAuthenticated(user));
//       }
//     } catch (_) {
//       emit(const _AuthUserUnauthenticated());
//     }
//   }

//   void _onSignUpWithEmailAndPassword(
//       _SignUpWithEmailAndPassword event, Emitter<AuthState> emit) {
//     emit(const _LoadInProgress());

//     try {
//       _authUseCase.signUpWithEmailAndPassword(
//           email: event.email, password: event.password);
//       emit(_AuthUserAuthenticated(_authUseCase.getSignedInUser()!));
//     } catch (_) {
//       emit(const _AuthUserUnauthenticated());
//     }
//   }

//   void _onSignInWithEmailAndPassword(
//       _SignInWithEmailAndPassword event, Emitter<AuthState> emit) {
//     emit(const _LoadInProgress());

//     try {
//       _authUseCase.signInWithEmailAndPassword(
//           email: event.email, password: event.password);
//       User? user = _authUseCase.getSignedInUser();
//       if (user != null) {
//         emit(_AuthUserAuthenticated(user));
//       }
//     } catch (_) {
//       emit(const _AuthUserUnauthenticated());
//     }
//   }

//   void _onUpdateUser(_UpdateUserEvent event, Emitter<AuthState> emit) {
//     try {
//       _authUseCase.updateUser(
//           gender: event.gender, nickname: event.nickname, phone: event.phone);
//     } catch (_) {}
//   }

//   Future<void> _onInitialAuthChecked(
//       _InitialCheckRequestedEvent event, Emitter<AuthState> emit) async {
//     User? signedInUser = _authUseCase.getSignedInUser();
//     signedInUser != null
//         ? emit(_AuthUserAuthenticated(signedInUser))
//         : emit(const _AuthUserUnauthenticated());
//   }

//   Future<void> _onLogoutButtonPressed(
//       _AuthLogoutButtonPressed event, Emitter<AuthState> emit) async {
//     await _authUseCase.signOut();
//   }

//   Future<void> _onCurrentUserChanged(
//           _AuthOnCurrentUserChanged event, Emitter<AuthState> emit) async =>
//       event.user != null
//           ? emit(_AuthUserAuthenticated(event.user!))
//           : emit(const _AuthUserUnauthenticated());

//   void _startUserSubscription() => _userSubscription = _authUseCase
//       .getCurrentUser()
//       .listen((user) => add(_AuthOnCurrentUserChanged(user)));

//   @override
//   Future<void> close() {
//     _userSubscription?.cancel();
//     return super.close();
//   }
// }

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

    // on<_AuthLogoutButtonPressed>(_onLogoutButtonPressed);
    // on<_AuthOnCurrentUserChanged>(_onCurrentUserChanged);
    // on<_SignInWithKakaoEvent>(_onSignInWithKakao);
    // on<_SignInWithAppleEvent>(_onSignInWithApple);
    // on<_SignUpWithEmailAndPassword>(_onSignUpWithEmailAndPassword);
    // on<_SignInWithEmailAndPassword>(_onSignInWithEmailAndPassword);
    // on<_UpdateUserEvent>(_onUpdateUser);

    _startUserSubscription();
  }

  Future<void> _onInitialCheckedRequestEvent(
      InitialCheckRequestedEvent event, Emitter<AuthState> emit) async {
    User? signedInUser = _authUseCase.getSignedInUser();
    signedInUser != null
        ? emit(AuthenticatedState(user: signedInUser))
        : emit(UnAuthenticatedState());
  }

  Future<void> _onSignInWithKakaoEvent(
      SignInWithKakaoEvent event, Emitter<AuthState> emit) async {
    emit(LoadInProgressState());

    try {
      await _authUseCase.signInWithKakao();
      User? user = _authUseCase.getSignedInUser();
      if (user != null) {
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
