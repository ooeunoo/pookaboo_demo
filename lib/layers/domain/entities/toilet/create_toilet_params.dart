import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';

part 'create_toilet_params.freezed.dart';
part 'create_toilet_params.g.dart';

@freezed
class CreateToiletParam with _$CreateToiletParam {
  factory CreateToiletParam({
    required String name,
    required int type,
    required bool gender,
    required bool password,
    required String password_tip,
    required String address,
    required String road_address,
    required String location_tip,
    required String city,
  }) = _CreateToiletParam;

  factory CreateToiletParam.fromJson(Map<String, dynamic> json) =>
      _$CreateToiletParamFromJson(json);
}

@freezed
class CreateConvenienceParams with _$CreateConvenienceParams {
  factory CreateConvenienceParams({
    required bool paper,
    required bool towel,
    required bool soap,
    required bool powder_room,
    required bool hand_dry,
    required bool vending,
    required bool diaper,
    required bool bell,
  }) = _CreateConvenienceParams;

  factory CreateConvenienceParams.fromJson(Map<String, dynamic> json) =>
      _$CreateConvenienceParamsFromJson(json);
}

@freezed
class CreateEquipmentParams with _$CreateEquipmentParams {
  factory CreateEquipmentParams({
    required List<int> urinal,
    required List<int> child_urinal,
    required List<int> disable_urinal,
    required List<int> seat,
    required List<int> child_seat,
    required List<int> disable_seat,
    required List<int> washbasin,
  }) = _CreateEquipmentParams;

  factory CreateEquipmentParams.fromJson(Map<String, dynamic> json) =>
      _$CreateEquipmentParamsFromJson(json);
}

@freezed
class CreateTimeParams with _$CreateTimeParams {
  factory CreateTimeParams({
    required OperateTime mon,
    required OperateTime tue,
    required OperateTime wed,
    required OperateTime thu,
    required OperateTime fri,
    required OperateTime sat,
    required OperateTime sun,
  }) = _CreateTimeParams;

  factory CreateTimeParams.fromJson(Map<String, dynamic> json) =>
      _$CreateTimeParamsFromJson(json);
}
