// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      avatar_url: json['avatar_url'] as String,
      role: json['role'] as int,
      nickname: json['nickname'] as String?,
      phone: json['phone'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      age: json['age'] as int?,
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'avatar_url': instance.avatar_url,
      'role': instance.role,
      'nickname': instance.nickname,
      'phone': instance.phone,
      'gender': _$GenderEnumMap[instance.gender],
      'age': instance.age,
      'created_at': instance.created_at.toIso8601String(),
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
