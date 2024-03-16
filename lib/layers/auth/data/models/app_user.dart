import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pookaboo/shared/constant/enum.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser(
      {required String id,
      required String email,
      required String name,
      String? nickname,
      required String avatar_url,
      String? phone,
      Gender? gender,
      int? age,
      required DateTime created_at}) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
