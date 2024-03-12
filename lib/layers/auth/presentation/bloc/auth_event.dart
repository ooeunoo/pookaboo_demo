// part of 'auth_bloc.dart';

// @freezed
// class AuthEvent with _$AuthEvent {
//   const factory AuthEvent.signInWithGoogleEvent() = _SignInWithGoogleEvent;
//   const factory AuthEvent.signInWithAppleEvent() = _SignInWithAppleEvent;
//   const factory AuthEvent.signInWithKakaoEvent() = _SignInWithKakaoEvent;

//   const factory AuthEvent.authOnCurrentUserChanged(User? user) =
//       _AuthOnCurrentUserChanged;
//   const factory AuthEvent.initialCheckRequested() = _InitialCheckRequestedEvent;
//   const factory AuthEvent.authLogoutButtonPressed() = _AuthLogoutButtonPressed;
//   const factory AuthEvent.signInWithEmailAndPassword(
//       String email, String password) = _SignInWithEmailAndPassword;
//   const factory AuthEvent.signUpWithEmailAndPassword(
//       String email, String password) = _SignUpWithEmailAndPassword;

//   const factory AuthEvent.updateUserEvent(
//       {String? nickname, String? phone, Gender? gender}) = _UpdateUserEvent;
// }

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
  final User? user;

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
  String? nickname;
  String? phone;
  Gender? gender;

  UpdateUserEvent({this.nickname, this.phone, this.gender});

  @override
  List<Object?> get props => [nickname, phone, gender];
}
