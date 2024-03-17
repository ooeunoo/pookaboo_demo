// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visitation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisitationImpl _$$VisitationImplFromJson(Map<String, dynamic> json) =>
    _$VisitationImpl(
      id: json['id'] as int,
      user: json['user'] == null
          ? null
          : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      toilet: Toilet.fromJson(json['toilet'] as Map<String, dynamic>),
      reviewed: json['reviewed'] as bool,
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$VisitationImplToJson(_$VisitationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'toilet': instance.toilet,
      'reviewed': instance.reviewed,
      'created_at': instance.created_at.toIso8601String(),
    };
