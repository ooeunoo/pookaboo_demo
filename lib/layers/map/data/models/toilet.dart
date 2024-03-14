import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'toilet.freezed.dart';
part 'toilet.g.dart';

@freezed
class Toilet with _$Toilet {
  factory Toilet({
    required int id,
    required String name,
    required int type,
    required bool visible,
    required bool gender,
    required bool password,
    @Default("") String password_tip,
    @Default(0) int reviews,
    required Map<String, dynamic> ratings,
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

  static double getRating(Toilet toilet) {
    var ratings = toilet.ratings;
    int cleanliness = ratings['cleanliness'];
    int management = ratings['management'];
    int convenience = ratings['convenience'];
    int safety = ratings['safety'];

    double averageRating =
        (cleanliness + management + convenience + safety) / 4;

    return double.parse(averageRating.toStringAsFixed(1));
  }
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
    required Map<String, dynamic> mon,
    required Map<String, dynamic> tue,
    required Map<String, dynamic> wed,
    required Map<String, dynamic> thu,
    required Map<String, dynamic> fri,
    required Map<String, dynamic> sat,
    required Map<String, dynamic> sun,
  }) = _Time;

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
}

// @freezed
// class Review with _$Review {
//   factory Review({
//     required Map<String, dynamic> user,
//     required double cleanliness,
//     required double safety,
//     required double convenience,
//     required double management,
//     required String comment,
//   }) = _Review;

//   factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
// }
