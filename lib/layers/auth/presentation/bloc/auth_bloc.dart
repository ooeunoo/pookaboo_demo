import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/layers/auth/domain/usecases/auth_usecase.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:pookaboo/shared/services/storage/local_storage.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> with AppLocalStorage {
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
  }

  Future<void> _onSignInWithKakaoEvent(
      SignInWithKakaoEvent event, Emitter<AuthState> emit) async {
    emit(LoadInProgressState());
    log.d('jherer');
    addDataInStorage<bool>(StorageKeys.isLogin, true);

    try {
      await _authUseCase.signInWithKakao();
      User? user = _authUseCase.getSignedInUser();
      log.d(user);

      if (user != null) {
        log.d('jherer');
        emit(AuthenticatedState(user: user));
        log.d('jherer');
      }
    } catch (_) {
      addDataInStorage<bool>(StorageKeys.isLogin, false);
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
      addDataInStorage<bool>(StorageKeys.isLogin, false);
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
