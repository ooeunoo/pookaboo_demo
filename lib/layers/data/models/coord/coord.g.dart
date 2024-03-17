// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConvertCoordParamsImpl _$$ConvertCoordParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ConvertCoordParamsImpl(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      inputCoord: json['inputCoord'] as String,
      outputCoord: json['outputCoord'] as String,
    );

Map<String, dynamic> _$$ConvertCoordParamsImplToJson(
        _$ConvertCoordParamsImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'inputCoord': instance.inputCoord,
      'outputCoord': instance.outputCoord,
    };

_$ConvertCoordResponseImpl _$$ConvertCoordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConvertCoordResponseImpl(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      documents: (json['documents'] as List<dynamic>)
          .map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConvertCoordResponseImplToJson(
        _$ConvertCoordResponseImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'documents': instance.documents,
    };

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      totalCount: json['totalCount'] as int,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
    };
