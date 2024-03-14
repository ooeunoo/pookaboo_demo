import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

part 'get_nearby_toilets_params.freezed.dart';
part 'get_nearby_toilets_params.g.dart';

@freezed
class GetNearByToiletsParams with _$GetNearByToiletsParams {
  factory GetNearByToiletsParams(
      {required LatLngBounds bounds,
      @Default(true) bool passwordFilter,
      @Default(false) bool timeFilter,
      @Default(false) bool genderFilter}) = _GetNearByToiletsParams;

  factory GetNearByToiletsParams.fromJson(Map<String, dynamic> json) =>
      _$GetNearByToiletsParamsFromJson(json);
}
