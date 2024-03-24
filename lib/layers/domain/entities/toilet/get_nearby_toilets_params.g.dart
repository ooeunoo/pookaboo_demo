// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_nearby_toilets_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNearByToiletsParamsImpl _$$GetNearByToiletsParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNearByToiletsParamsImpl(
      loc: LatLng.fromJson(json['loc'] as Map<String, dynamic>),
      radius: json['radius'] as int,
      passwordFilter: json['passwordFilter'] as bool? ?? true,
      timeFilter: json['timeFilter'] as bool? ?? false,
      genderFilter: json['genderFilter'] as bool? ?? false,
    );

Map<String, dynamic> _$$GetNearByToiletsParamsImplToJson(
        _$GetNearByToiletsParamsImpl instance) =>
    <String, dynamic>{
      'loc': instance.loc,
      'radius': instance.radius,
      'passwordFilter': instance.passwordFilter,
      'timeFilter': instance.timeFilter,
      'genderFilter': instance.genderFilter,
    };
