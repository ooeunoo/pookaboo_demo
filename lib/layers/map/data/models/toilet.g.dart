// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toilet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToiletImpl _$$ToiletImplFromJson(Map<String, dynamic> json) => _$ToiletImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      type: json['type'] as String,
      visible: json['visible'] as bool,
      gender: json['gender'] as bool,
      password: json['password'] as bool,
      password_tip: json['password_tip'] as String? ?? "",
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      reviews: (json['reviews'] as num?)?.toDouble() ?? 0,
      location_type: json['location_type'] as String,
      address: json['address'] as String,
      road_address: json['road_address'] as String,
      location_tip: json['location_tip'] as String,
      city: json['city'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$ToiletImplToJson(_$ToiletImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'visible': instance.visible,
      'gender': instance.gender,
      'password': instance.password,
      'password_tip': instance.password_tip,
      'rating': instance.rating,
      'reviews': instance.reviews,
      'location_type': instance.location_type,
      'address': instance.address,
      'road_address': instance.road_address,
      'location_tip': instance.location_tip,
      'city': instance.city,
      'lat': instance.lat,
      'lng': instance.lng,
    };
