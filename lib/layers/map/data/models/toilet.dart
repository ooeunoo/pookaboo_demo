import 'package:freezed_annotation/freezed_annotation.dart';

part 'toilet.freezed.dart';
part 'toilet.g.dart';

@freezed
class Toilet with _$Toilet {
  factory Toilet({
    required int id,
    required String name,
    required String type,
    required bool visible,
    required bool gender,
    required bool password,
    @Default("") String password_tip,
    @Default(0) double rating,
    @Default(0) double reviews,
    required String location_type,
    required String address,
    required String road_address,
    required String location_tip,
    required String city,
    required double lat,
    required double lng,
    Convenience? convenience,
    Equipment? equipment,
    Time? time,
  }) = _Toilet;

  factory Toilet.fromJson(Map<String, dynamic> json) => _$ToiletFromJson(json);
}

@freezed
class Convenience with _$Convenience {
  factory Convenience({
    required bool paper,
    required bool towel,
    required bool soap,
    required bool powder_room,
    required bool hand_dry,
    required bool vending,
    required bool diaper,
    required bool bell,
  }) = _Convenience;

  factory Convenience.fromJson(Map<String, dynamic> json) =>
      _$ConvenienceFromJson(json);
}

@freezed
class Equipment with _$Equipment {
  factory Equipment({
    required String urinal,
    required String child_urinal,
    required String disable_urinal,
    required String seat,
    required String child_seat,
    required String disable_seat,
    required String washbasin,
  }) = _Equipment;

  factory Equipment.fromJson(Map<String, dynamic> json) =>
      _$EquipmentFromJson(json);
}

@freezed
class Time with _$Time {
  factory Time({
    required String mon,
    required String tue,
    required String wed,
    required String thu,
    required String fri,
    required String sat,
    required String sun,
  }) = _Time;

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
}
