// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_inquiry_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserInquiryParamsImpl _$$CreateUserInquiryParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserInquiryParamsImpl(
      toilet_id: json['toilet_id'] as int,
      user_id: json['user_id'] as String,
      inquiry: json['inquiry'] as String,
    );

Map<String, dynamic> _$$CreateUserInquiryParamsImplToJson(
        _$CreateUserInquiryParamsImpl instance) =>
    <String, dynamic>{
      'toilet_id': instance.toilet_id,
      'user_id': instance.user_id,
      'inquiry': instance.inquiry,
    };
