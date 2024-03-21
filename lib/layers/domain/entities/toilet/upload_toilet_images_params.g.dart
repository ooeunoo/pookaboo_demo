// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_toilet_images_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadToiletImagesParamsImpl _$$UploadToiletImagesParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadToiletImagesParamsImpl(
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageFormData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UploadToiletImagesParamsImplToJson(
        _$UploadToiletImagesParamsImpl instance) =>
    <String, dynamic>{
      'images': instance.images,
    };

_$ImageFormDataImpl _$$ImageFormDataImplFromJson(Map<String, dynamic> json) =>
    _$ImageFormDataImpl(
      filePath: json['filePath'] as String,
      storagePath: json['storagePath'] as String,
    );

Map<String, dynamic> _$$ImageFormDataImplToJson(_$ImageFormDataImpl instance) =>
    <String, dynamic>{
      'filePath': instance.filePath,
      'storagePath': instance.storagePath,
    };
