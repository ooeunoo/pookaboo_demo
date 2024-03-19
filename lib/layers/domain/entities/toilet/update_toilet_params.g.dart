// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_toilet_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateToiletParamImpl _$$UpdateToiletParamImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateToiletParamImpl(
      toilet_id: json['toilet_id'] as String,
      name: json['name'] as String?,
      type: json['type'] as int?,
      gender: json['gender'] as bool?,
      password: json['password'] as bool?,
      password_tip: json['password_tip'] as String?,
      address: json['address'] as String?,
      road_address: json['road_address'] as String?,
      location_tip: json['location_tip'] as String?,
      city: json['city'] as String?,
      coordinates: json['coordinates'] as String?,
      paper: json['paper'] as bool?,
      towel: json['towel'] as bool?,
      soap: json['soap'] as bool?,
      powder_room: json['powder_room'] as bool?,
      hand_dry: json['hand_dry'] as bool?,
      vending: json['vending'] as bool?,
      diaper: json['diaper'] as bool?,
      bell: json['bell'] as bool?,
      urinal: (json['urinal'] as List<dynamic>?)?.map((e) => e as int).toList(),
      child_urinal: (json['child_urinal'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      disable_urinal: (json['disable_urinal'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      seat: (json['seat'] as List<dynamic>?)?.map((e) => e as int).toList(),
      child_seat:
          (json['child_seat'] as List<dynamic>?)?.map((e) => e as int).toList(),
      disable_seat: (json['disable_seat'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      washbasin:
          (json['washbasin'] as List<dynamic>?)?.map((e) => e as int).toList(),
      mon: json['mon'] == null
          ? null
          : OperateTime.fromJson(json['mon'] as Map<String, dynamic>),
      tue: json['tue'] == null
          ? null
          : OperateTime.fromJson(json['tue'] as Map<String, dynamic>),
      wed: json['wed'] == null
          ? null
          : OperateTime.fromJson(json['wed'] as Map<String, dynamic>),
      thu: json['thu'] == null
          ? null
          : OperateTime.fromJson(json['thu'] as Map<String, dynamic>),
      fri: json['fri'] == null
          ? null
          : OperateTime.fromJson(json['fri'] as Map<String, dynamic>),
      sat: json['sat'] == null
          ? null
          : OperateTime.fromJson(json['sat'] as Map<String, dynamic>),
      sun: json['sun'] == null
          ? null
          : OperateTime.fromJson(json['sun'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateToiletParamImplToJson(
        _$UpdateToiletParamImpl instance) =>
    <String, dynamic>{
      'toilet_id': instance.toilet_id,
      'name': instance.name,
      'type': instance.type,
      'gender': instance.gender,
      'password': instance.password,
      'password_tip': instance.password_tip,
      'address': instance.address,
      'road_address': instance.road_address,
      'location_tip': instance.location_tip,
      'city': instance.city,
      'coordinates': instance.coordinates,
      'paper': instance.paper,
      'towel': instance.towel,
      'soap': instance.soap,
      'powder_room': instance.powder_room,
      'hand_dry': instance.hand_dry,
      'vending': instance.vending,
      'diaper': instance.diaper,
      'bell': instance.bell,
      'urinal': instance.urinal,
      'child_urinal': instance.child_urinal,
      'disable_urinal': instance.disable_urinal,
      'seat': instance.seat,
      'child_seat': instance.child_seat,
      'disable_seat': instance.disable_seat,
      'washbasin': instance.washbasin,
      'mon': instance.mon,
      'tue': instance.tue,
      'wed': instance.wed,
      'thu': instance.thu,
      'fri': instance.fri,
      'sat': instance.sat,
      'sun': instance.sun,
    };
