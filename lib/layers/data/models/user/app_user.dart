import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

enum Gender {
  male('남성'),
  female('여성'),
  ;

  const Gender(this.ko);

  final String ko;
}

enum Role {
  general,
  owner,
}

enum UserVersion {
  init,
  profileupdated,
}

@freezed
class AppUser with _$AppUser {
  const AppUser._(); // Added constructor

  const factory AppUser(
      {required String id,
      required String email,
      required String name,
      required String avatar_url,
      required int role,
      String? nickname,
      String? phone,
      int? gender,
      int? age,
      required int version,
      required DateTime created_at}) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);

  bool isOwner() {
    return role == Role.owner.index;
  }

  bool isMale() {
    if (gender == null) return false;
    return gender == Gender.male.index ? true : false;
  }

  bool isRequiredUpdateV1() {
    return version < UserVersion.profileupdated.index;
  }
}
