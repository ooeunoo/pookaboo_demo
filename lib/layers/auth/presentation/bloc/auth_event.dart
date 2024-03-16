part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {}

/////////////////////////////////
///
///
////////////////////////////////
class InitialCheckRequestedEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

/////////////////////////////////
///
///
////////////////////////////////
class SignInWithKakaoEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

/////////////////////////////////
///
///
////////////////////////////////
class ChangedUserEvent extends AuthEvent {
  final AppUser? user;

  ChangedUserEvent({required this.user});

  @override
  List<Object?> get props => [user];
}

/////////////////////////////////
///
///
////////////////////////////////
class LogoutEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

/////////////////////////////////
///
///
////////////////////////////////
class UpdateUserEvent extends AuthEvent {
  final UpdateUserParams params;

  UpdateUserEvent({required this.params});

  @override
  List<Object?> get props => [params];
}
