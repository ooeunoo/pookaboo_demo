// To parse this JSON data, do
//
//     final transCoordResponse = transCoordResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'coord.freezed.dart';
part 'coord.g.dart';

@freezed
class ConvertCoordParams with _$ConvertCoordParams {
  const factory ConvertCoordParams({
    required double x,
    required double y,
    required String inputCoord,
    required String outputCoord,
  }) = _ConvertCoordParams;

  factory ConvertCoordParams.fromJson(Map<String, dynamic> json) =>
      _$ConvertCoordParamsFromJson(json);
}

@freezed
class ConvertCoordResponse with _$ConvertCoordResponse {
  const factory ConvertCoordResponse({
    required Meta meta,
    required List<Document> documents,
  }) = _ConvertCoordResponse;

  factory ConvertCoordResponse.fromJson(Map<String, dynamic> json) =>
      _$ConvertCoordResponseFromJson(json);
}

@freezed
class Document with _$Document {
  const factory Document({
    required double x,
    required double y,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    required int totalCount,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
