import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

part 'create_visitation_params.freezed.dart';
part 'create_visitation_params.g.dart';

@freezed
class CreateVisitationParams with _$CreateVisitationParams {
  factory CreateVisitationParams({
    required int toilet_id,
    required String user_id,
  }) = _CreateVisitationParams;

  factory CreateVisitationParams.fromJson(Map<String, dynamic> json) =>
      _$CreateVisitationParamsFromJson(json);
}
