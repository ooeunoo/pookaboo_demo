// part of 'auth_bloc.dart';

// @freezed
// class AuthState with _$AuthState {
//   const factory AuthState.initial() = _Initial;
//   const factory AuthState.loadInProgress() = _LoadInProgress;
//   const factory AuthState.authUserAuthenticated(User user) =
//       _AuthUserAuthenticated;
//   const factory AuthState.authUserUnauthenticated() = _AuthUserUnauthenticated;
// }

part of 'auth_bloc.dart';

@immutable
abstract class AuthState extends Equatable {}

/////////////////////////////////
/// Initial
////////////////////////////////
class InitialState extends AuthState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// LoadInProgressState
////////////////////////////////
class LoadInProgressState extends AuthState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// AuthenticatedState
////////////////////////////////
class AuthenticatedState extends AuthState {
  final AppUser user;

  AuthenticatedState({required this.user});

  @override
  List<Object> get props => [user];
}

/////////////////////////////////
/// UnAuthenticatedState
////////////////////////////////
class UnAuthenticatedState extends AuthState {
  @override
  List<Object> get props => [];
}
