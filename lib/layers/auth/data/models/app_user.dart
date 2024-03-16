// ignore_for_file: deprecated_member_use_from_same_package
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required Map<String, dynamic> appMetadata,
    Map<String, dynamic>? userMetadata,
    required String aud,
    String? confirmationSentAt,
    String? recoverySentAt,
    String? emailChangeSentAt,
    String? newEmail,
    String? invitedAt,
    String? actionLink,
    String? email,
    String? phone,
    required String createdAt,
    String? confirmedAt,
    String? phoneConfirmedAt,
    String? lastSignInAt,
    String? emailConfirmedAt,
    String? role,
    String? updatedAt,
    List<AppUserIdentity>? identities,
    List<Factor>? factors,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}

@freezed
class AppUserIdentity with _$AppUserIdentity {
  const factory AppUserIdentity({
    required String id,
    required String userId,
    Map<String, dynamic>? identityData,
    required String identityId,
    required String provider,
    String? createdAt,
    String? lastSignInAt,
    String? updatedAt,
  }) = _AppUserIdentity;

  factory AppUserIdentity.fromJson(Map<String, dynamic> json) =>
      _$AppUserIdentityFromJson(json);
}

enum FactorType { totp }

enum FactorStatus { verified, unverified }

@freezed
class Factor with _$Factor {
  const factory Factor(
      {required String id,
      String? friendlyName,
      required FactorType factorType,
      required FactorStatus status,
      required DateTime createdAt,
      required DateTime updatedAt}) = _Factor;

  factory Factor.fromJson(Map<String, dynamic> json) => _$FactorFromJson(json);
}
