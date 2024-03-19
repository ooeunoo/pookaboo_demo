part of 'user_bloc.dart';

@immutable
abstract class UserState extends Equatable {}

/////////////////////////////////
/// Initial
////////////////////////////////
class InitialState extends UserState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// LoadInProgressState
////////////////////////////////
class LoadInProgressState extends UserState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// AuthenticatedState
////////////////////////////////
class AuthenticatedState extends UserState {
  final AppUser user;

  AuthenticatedState({required this.user});

  @override
  List<Object> get props => [user];
}

/////////////////////////////////
/// UnAuthenticatedState
////////////////////////////////
class UnAuthenticatedState extends UserState {
  @override
  List<Object> get props => [];
}
