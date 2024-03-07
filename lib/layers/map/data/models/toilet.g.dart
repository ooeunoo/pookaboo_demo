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
      convenience: json['convenience'] == null
          ? null
          : Convenience.fromJson(json['convenience'] as Map<String, dynamic>),
      equipment: json['equipment'] == null
          ? null
          : Equipment.fromJson(json['equipment'] as Map<String, dynamic>),
      time: json['time'] == null
          ? null
          : Time.fromJson(json['time'] as Map<String, dynamic>),
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
      'convenience': instance.convenience,
      'equipment': instance.equipment,
      'time': instance.time,
    };

_$ConvenienceImpl _$$ConvenienceImplFromJson(Map<String, dynamic> json) =>
    _$ConvenienceImpl(
      paper: json['paper'] as bool,
      towel: json['towel'] as bool,
      soap: json['soap'] as bool,
      powder_room: json['powder_room'] as bool,
      hand_dry: json['hand_dry'] as bool,
      vending: json['vending'] as bool,
      diaper: json['diaper'] as bool,
      bell: json['bell'] as bool,
    );

Map<String, dynamic> _$$ConvenienceImplToJson(_$ConvenienceImpl instance) =>
    <String, dynamic>{
      'paper': instance.paper,
      'towel': instance.towel,
      'soap': instance.soap,
      'powder_room': instance.powder_room,
      'hand_dry': instance.hand_dry,
      'vending': instance.vending,
      'diaper': instance.diaper,
      'bell': instance.bell,
    };

_$EquipmentImpl _$$EquipmentImplFromJson(Map<String, dynamic> json) =>
    _$EquipmentImpl(
      urinal: json['urinal'] as String,
      child_urinal: json['child_urinal'] as String,
      disable_urinal: json['disable_urinal'] as String,
      seat: json['seat'] as String,
      child_seat: json['child_seat'] as String,
      disable_seat: json['disable_seat'] as String,
      washbasin: json['washbasin'] as String,
    );

Map<String, dynamic> _$$EquipmentImplToJson(_$EquipmentImpl instance) =>
    <String, dynamic>{
      'urinal': instance.urinal,
      'child_urinal': instance.child_urinal,
      'disable_urinal': instance.disable_urinal,
      'seat': instance.seat,
      'child_seat': instance.child_seat,
      'disable_seat': instance.disable_seat,
      'washbasin': instance.washbasin,
    };

_$TimeImpl _$$TimeImplFromJson(Map<String, dynamic> json) => _$TimeImpl(
      mon: json['mon'] as String,
      tue: json['tue'] as String,
      wed: json['wed'] as String,
      thu: json['thu'] as String,
      fri: json['fri'] as String,
      sat: json['sat'] as String,
      sun: json['sun'] as String,
    );

Map<String, dynamic> _$$TimeImplToJson(_$TimeImpl instance) =>
    <String, dynamic>{
      'mon': instance.mon,
      'tue': instance.tue,
      'wed': instance.wed,
      'thu': instance.thu,
      'fri': instance.fri,
      'sat': instance.sat,
      'sun': instance.sun,
    };
