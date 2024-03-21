import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_toilet_images_params.freezed.dart';
part 'upload_toilet_images_params.g.dart';

@freezed
class UploadToiletImagesParams with _$UploadToiletImagesParams {
  factory UploadToiletImagesParams({
    required List<ImageFormData> images,
  }) = _UploadToiletImagesParams;

  factory UploadToiletImagesParams.fromJson(Map<String, dynamic> json) =>
      _$UploadToiletImagesParamsFromJson(json);
}

@freezed
class ImageFormData with _$ImageFormData {
  factory ImageFormData({
    required String filePath,
    required String storagePath,
  }) = _ImageFormData;

  factory ImageFormData.fromJson(Map<String, dynamic> json) =>
      _$ImageFormDataFromJson(json);
}
