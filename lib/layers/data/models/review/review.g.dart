// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      id: json['id'] as int,
      user: json['user'] == null
          ? null
          : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      toilet: json['toilet'] == null
          ? null
          : Toilet.fromJson(json['toilet'] as Map<String, dynamic>),
      cleanliness: (json['cleanliness'] as num).toDouble(),
      safety: (json['safety'] as num).toDouble(),
      management: (json['management'] as num).toDouble(),
      convenience: (json['convenience'] as num).toDouble(),
      comment: json['comment'] as String,
      modified_at: DateTime.parse(json['modified_at'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'toilet': instance.toilet,
      'cleanliness': instance.cleanliness,
      'safety': instance.safety,
      'management': instance.management,
      'convenience': instance.convenience,
      'comment': instance.comment,
      'modified_at': instance.modified_at.toIso8601String(),
      'created_at': instance.created_at.toIso8601String(),
    };
