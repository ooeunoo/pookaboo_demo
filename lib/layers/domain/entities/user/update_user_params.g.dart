// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserParamsImpl _$$UpdateUserParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserParamsImpl(
      user_id: json['user_id'] as String,
      nickname: json['nickname'] as String? ?? null,
      phone: json['phone'] as String? ?? null,
      gender: json['gender'] as int? ?? null,
      age: json['age'] as String? ?? null,
      version: json['version'] as int? ?? null,
    );

Map<String, dynamic> _$$UpdateUserParamsImplToJson(
        _$UpdateUserParamsImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'nickname': instance.nickname,
      'phone': instance.phone,
      'gender': instance.gender,
      'age': instance.age,
      'version': instance.version,
    };
