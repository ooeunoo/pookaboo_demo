import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

part 'create_user_inquiry_params.freezed.dart';
part 'create_user_inquiry_params.g.dart';

@freezed
class CreateUserInquiryParams with _$CreateUserInquiryParams {
  factory CreateUserInquiryParams({
    required int toilet_id,
    required String user_id,
    required String inquiry,
  }) = _CreateUserInquiryParams;

  factory CreateUserInquiryParams.fromJson(Map<String, dynamic> json) =>
      _$CreateUserInquiryParamsFromJson(json);
}
