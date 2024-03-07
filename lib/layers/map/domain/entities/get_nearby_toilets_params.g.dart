// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_nearby_toilets_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNearByToiletsParamsImpl _$$GetNearByToiletsParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNearByToiletsParamsImpl(
      bounds: LatLngBounds.fromJson(json['bounds'] as Map<String, dynamic>),
      filterOfVisible: json['filterOfVisible'] as bool? ?? true,
      filterOfPassword: json['filterOfPassword'] as bool? ?? false,
    );

Map<String, dynamic> _$$GetNearByToiletsParamsImplToJson(
        _$GetNearByToiletsParamsImpl instance) =>
    <String, dynamic>{
      'bounds': instance.bounds,
      'filterOfVisible': instance.filterOfVisible,
      'filterOfPassword': instance.filterOfPassword,
    };
