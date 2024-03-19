part of 'user_bloc.dart';

@immutable
abstract class UserEvent extends Equatable {}

/////////////////////////////////
///
///
////////////////////////////////
class CheckRequestedEvent extends UserEvent {
  @override
  List<Object?> get props => [];
}

/////////////////////////////////
///
///
////////////////////////////////
class SignInWithKakaoEvent extends UserEvent {
  @override
  List<Object?> get props => [];
}

/////////////////////////////////
///
///
////////////////////////////////
class ChangedUserEvent extends UserEvent {
  final User? user;

  ChangedUserEvent({required this.user});

  @override
  List<Object?> get props => [user];
}

/////////////////////////////////
///
///
////////////////////////////////
class LogoutEvent extends UserEvent {
  @override
  List<Object?> get props => [];
}

/////////////////////////////////
///
///
////////////////////////////////
class UpdateUserEvent extends UserEvent {
  final UpdateUserParams params;

  UpdateUserEvent({required this.params});

  @override
  List<Object?> get props => [params];
}

/////////////////////////////////
///
////////////////////////////////
class CreateUserInquiryEvent extends UserEvent {
  final CreateUserInquiryParams params;

  CreateUserInquiryEvent({required this.params});

  @override
  List<Object?> get props => [params];
}
