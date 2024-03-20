// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toilet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToiletImpl _$$ToiletImplFromJson(Map<String, dynamic> json) => _$ToiletImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      type: json['type'] as int,
      visible: json['visible'] as bool,
      gender: json['gender'] as bool,
      password: json['password'] as bool,
      password_tip: json['password_tip'] as String? ?? "",
      location_type: json['location_type'] as String,
      address: json['address'] as String,
      road_address: json['road_address'] as String,
      location_tip: json['location_tip'] as String,
      city: json['city'] as String,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      total_review: json['total_review'] as int?,
      convenience: json['convenience'] == null
          ? null
          : Convenience.fromJson(json['convenience'] as Map<String, dynamic>),
      equipment: json['equipment'] == null
          ? null
          : Equipment.fromJson(json['equipment'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
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
      'location_type': instance.location_type,
      'address': instance.address,
      'road_address': instance.road_address,
      'location_tip': instance.location_tip,
      'city': instance.city,
      'lat': instance.lat,
      'lng': instance.lng,
      'total_review': instance.total_review,
      'convenience': instance.convenience,
      'equipment': instance.equipment,
      'rating': instance.rating,
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
      urinal: (json['urinal'] as List<dynamic>).map((e) => e as int).toList(),
      child_urinal:
          (json['child_urinal'] as List<dynamic>).map((e) => e as int).toList(),
      disable_urinal: (json['disable_urinal'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      seat: (json['seat'] as List<dynamic>).map((e) => e as int).toList(),
      child_seat:
          (json['child_seat'] as List<dynamic>).map((e) => e as int).toList(),
      disable_seat:
          (json['disable_seat'] as List<dynamic>).map((e) => e as int).toList(),
      washbasin:
          (json['washbasin'] as List<dynamic>).map((e) => e as int).toList(),
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

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      cleanliness: (json['cleanliness'] as num).toDouble(),
      safety: (json['safety'] as num).toDouble(),
      convenience: (json['convenience'] as num).toDouble(),
      management: (json['management'] as num).toDouble(),
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'cleanliness': instance.cleanliness,
      'safety': instance.safety,
      'convenience': instance.convenience,
      'management': instance.management,
    };

_$TimeImpl _$$TimeImplFromJson(Map<String, dynamic> json) => _$TimeImpl(
      mon: OperateTime.fromJson(json['mon'] as Map<String, dynamic>),
      tue: OperateTime.fromJson(json['tue'] as Map<String, dynamic>),
      wed: OperateTime.fromJson(json['wed'] as Map<String, dynamic>),
      thu: OperateTime.fromJson(json['thu'] as Map<String, dynamic>),
      fri: OperateTime.fromJson(json['fri'] as Map<String, dynamic>),
      sat: OperateTime.fromJson(json['sat'] as Map<String, dynamic>),
      sun: OperateTime.fromJson(json['sun'] as Map<String, dynamic>),
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

_$OperateTimeImpl _$$OperateTimeImplFromJson(Map<String, dynamic> json) =>
    _$OperateTimeImpl(
      open: json['open'] as String?,
      close: json['close'] as String?,
    );

Map<String, dynamic> _$$OperateTimeImplToJson(_$OperateTimeImpl instance) =>
    <String, dynamic>{
      'open': instance.open,
      'close': instance.close,
    };
