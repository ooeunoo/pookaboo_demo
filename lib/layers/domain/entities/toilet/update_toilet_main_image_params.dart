import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_toilet_main_image_params.freezed.dart';
part 'update_toilet_main_image_params.g.dart';

@freezed
class UpdateToiletMainImageParams with _$UpdateToiletMainImageParams {
  factory UpdateToiletMainImageParams({
    required String toilet_id,
    required String file_name,
    required bool has_main,
  }) = _UpdateToiletMainImageParams;

  factory UpdateToiletMainImageParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateToiletMainImageParamsFromJson(json);
}
