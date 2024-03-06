import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_lat_lng.freezed.dart';
part 'map_lat_lng.g.dart';

@freezed
class MapLatLng with _$MapLatLng {
  factory MapLatLng(
      {required double min_lat,
      required double min_lng,
      required double max_lat,
      required double max_lng}) = _MapLatLng;

  factory MapLatLng.fromJson(Map<String, dynamic> json) =>
      _$MapLatLngFromJson(json);
}
