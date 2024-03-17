import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

part 'create_review_params.freezed.dart';
part 'create_review_params.g.dart';

@freezed
class CreateReviewParams with _$CreateReviewParams {
  factory CreateReviewParams(
      {required int toiletId,
      required String userId,
      @Default(0) double cleanliness,
      @Default(0) double convenience,
      @Default(0) double safety,
      @Default(0) double management,
      @Default('') String comment}) = _CreateReviewParams;

  factory CreateReviewParams.fromJson(Map<String, dynamic> json) =>
      _$CreateReviewParamsFromJson(json);
}
