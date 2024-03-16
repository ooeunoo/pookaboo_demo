import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pookaboo/shared/constant/enum.dart';

part 'update_user_params.freezed.dart';
part 'update_user_params.g.dart';

@freezed
class UpdateUserParams with _$UpdateUserParams {
  factory UpdateUserParams({
    @Default(null) String? nickname,
    @Default(null) String? phone,
    @Default(null) Gender? gender,
    @Default(null) String? age,
  }) = _UpdateUserParams;

  factory UpdateUserParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserParamsFromJson(json);
}
