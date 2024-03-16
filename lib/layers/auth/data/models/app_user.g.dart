// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      id: json['id'] as String,
      appMetadata: json['appMetadata'] as Map<String, dynamic>,
      userMetadata: json['userMetadata'] as Map<String, dynamic>?,
      aud: json['aud'] as String,
      confirmationSentAt: json['confirmationSentAt'] as String?,
      recoverySentAt: json['recoverySentAt'] as String?,
      emailChangeSentAt: json['emailChangeSentAt'] as String?,
      newEmail: json['newEmail'] as String?,
      invitedAt: json['invitedAt'] as String?,
      actionLink: json['actionLink'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      createdAt: json['createdAt'] as String,
      confirmedAt: json['confirmedAt'] as String?,
      phoneConfirmedAt: json['phoneConfirmedAt'] as String?,
      lastSignInAt: json['lastSignInAt'] as String?,
      emailConfirmedAt: json['emailConfirmedAt'] as String?,
      role: json['role'] as String?,
      updatedAt: json['updatedAt'] as String?,
      identities: (json['identities'] as List<dynamic>?)
          ?.map((e) => AppUserIdentity.fromJson(e as Map<String, dynamic>))
          .toList(),
      factors: (json['factors'] as List<dynamic>?)
          ?.map((e) => Factor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appMetadata': instance.appMetadata,
      'userMetadata': instance.userMetadata,
      'aud': instance.aud,
      'confirmationSentAt': instance.confirmationSentAt,
      'recoverySentAt': instance.recoverySentAt,
      'emailChangeSentAt': instance.emailChangeSentAt,
      'newEmail': instance.newEmail,
      'invitedAt': instance.invitedAt,
      'actionLink': instance.actionLink,
      'email': instance.email,
      'phone': instance.phone,
      'createdAt': instance.createdAt,
      'confirmedAt': instance.confirmedAt,
      'phoneConfirmedAt': instance.phoneConfirmedAt,
      'lastSignInAt': instance.lastSignInAt,
      'emailConfirmedAt': instance.emailConfirmedAt,
      'role': instance.role,
      'updatedAt': instance.updatedAt,
      'identities': instance.identities,
      'factors': instance.factors,
    };

_$AppUserIdentityImpl _$$AppUserIdentityImplFromJson(
        Map<String, dynamic> json) =>
    _$AppUserIdentityImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      identityData: json['identityData'] as Map<String, dynamic>?,
      identityId: json['identityId'] as String,
      provider: json['provider'] as String,
      createdAt: json['createdAt'] as String?,
      lastSignInAt: json['lastSignInAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$AppUserIdentityImplToJson(
        _$AppUserIdentityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'identityData': instance.identityData,
      'identityId': instance.identityId,
      'provider': instance.provider,
      'createdAt': instance.createdAt,
      'lastSignInAt': instance.lastSignInAt,
      'updatedAt': instance.updatedAt,
    };

_$FactorImpl _$$FactorImplFromJson(Map<String, dynamic> json) => _$FactorImpl(
      id: json['id'] as String,
      friendlyName: json['friendlyName'] as String?,
      factorType: $enumDecode(_$FactorTypeEnumMap, json['factorType']),
      status: $enumDecode(_$FactorStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$FactorImplToJson(_$FactorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'friendlyName': instance.friendlyName,
      'factorType': _$FactorTypeEnumMap[instance.factorType]!,
      'status': _$FactorStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$FactorTypeEnumMap = {
  FactorType.totp: 'totp',
};

const _$FactorStatusEnumMap = {
  FactorStatus.verified: 'verified',
  FactorStatus.unverified: 'unverified',
};
