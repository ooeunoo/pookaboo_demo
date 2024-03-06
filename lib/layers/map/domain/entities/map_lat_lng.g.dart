// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_lat_lng.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapLatLngImpl _$$MapLatLngImplFromJson(Map<String, dynamic> json) =>
    _$MapLatLngImpl(
      min_lat: (json['min_lat'] as num).toDouble(),
      min_lng: (json['min_lng'] as num).toDouble(),
      max_lat: (json['max_lat'] as num).toDouble(),
      max_lng: (json['max_lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$MapLatLngImplToJson(_$MapLatLngImpl instance) =>
    <String, dynamic>{
      'min_lat': instance.min_lat,
      'min_lng': instance.min_lng,
      'max_lat': instance.max_lat,
      'max_lng': instance.max_lng,
    };
