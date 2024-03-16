// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      user: AppUser.fromJson(json['user'] as Map<String, dynamic>),
      toilet: Toilet.fromJson(json['toilet'] as Map<String, dynamic>),
      cleanliness: (json['cleanliness'] as num).toDouble(),
      safety: (json['safety'] as num).toDouble(),
      management: (json['management'] as num).toDouble(),
      convenience: (json['convenience'] as num).toDouble(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'toilet': instance.toilet,
      'cleanliness': instance.cleanliness,
      'safety': instance.safety,
      'management': instance.management,
      'convenience': instance.convenience,
      'comment': instance.comment,
    };
