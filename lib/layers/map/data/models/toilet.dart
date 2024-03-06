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
    required String password_tip,
    required double rating,
    required double reviews,
    required String location_type,
    required String address,
    required String road_address,
    required String location_tip,
    required String city,
    required double lat,
    required double lng,
  }) = _Toilet;

  factory Toilet.fromJson(Map<String, dynamic> json) => _$ToiletFromJson(json);
}
