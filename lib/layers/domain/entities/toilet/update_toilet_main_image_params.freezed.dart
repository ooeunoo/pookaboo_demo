// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_toilet_main_image_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateToiletMainImageParams _$UpdateToiletMainImageParamsFromJson(
    Map<String, dynamic> json) {
  return _UpdateToiletMainImageParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateToiletMainImageParams {
  String get toilet_id => throw _privateConstructorUsedError;
  String get file_name => throw _privateConstructorUsedError;
  bool get has_main => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateToiletMainImageParamsCopyWith<UpdateToiletMainImageParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateToiletMainImageParamsCopyWith<$Res> {
  factory $UpdateToiletMainImageParamsCopyWith(
          UpdateToiletMainImageParams value,
          $Res Function(UpdateToiletMainImageParams) then) =
      _$UpdateToiletMainImageParamsCopyWithImpl<$Res,
          UpdateToiletMainImageParams>;
  @useResult
  $Res call({String toilet_id, String file_name, bool has_main});
}

/// @nodoc
class _$UpdateToiletMainImageParamsCopyWithImpl<$Res,
        $Val extends UpdateToiletMainImageParams>
    implements $UpdateToiletMainImageParamsCopyWith<$Res> {
  _$UpdateToiletMainImageParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toilet_id = null,
    Object? file_name = null,
    Object? has_main = null,
  }) {
    return _then(_value.copyWith(
      toilet_id: null == toilet_id
          ? _value.toilet_id
          : toilet_id // ignore: cast_nullable_to_non_nullable
              as String,
      file_name: null == file_name
          ? _value.file_name
          : file_name // ignore: cast_nullable_to_non_nullable
              as String,
      has_main: null == has_main
          ? _value.has_main
          : has_main // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateToiletMainImageParamsImplCopyWith<$Res>
    implements $UpdateToiletMainImageParamsCopyWith<$Res> {
  factory _$$UpdateToiletMainImageParamsImplCopyWith(
          _$UpdateToiletMainImageParamsImpl value,
          $Res Function(_$UpdateToiletMainImageParamsImpl) then) =
      __$$UpdateToiletMainImageParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String toilet_id, String file_name, bool has_main});
}

/// @nodoc
class __$$UpdateToiletMainImageParamsImplCopyWithImpl<$Res>
    extends _$UpdateToiletMainImageParamsCopyWithImpl<$Res,
        _$UpdateToiletMainImageParamsImpl>
    implements _$$UpdateToiletMainImageParamsImplCopyWith<$Res> {
  __$$UpdateToiletMainImageParamsImplCopyWithImpl(
      _$UpdateToiletMainImageParamsImpl _value,
      $Res Function(_$UpdateToiletMainImageParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toilet_id = null,
    Object? file_name = null,
    Object? has_main = null,
  }) {
    return _then(_$UpdateToiletMainImageParamsImpl(
      toilet_id: null == toilet_id
          ? _value.toilet_id
          : toilet_id // ignore: cast_nullable_to_non_nullable
              as String,
      file_name: null == file_name
          ? _value.file_name
          : file_name // ignore: cast_nullable_to_non_nullable
              as String,
      has_main: null == has_main
          ? _value.has_main
          : has_main // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateToiletMainImageParamsImpl
    implements _UpdateToiletMainImageParams {
  _$UpdateToiletMainImageParamsImpl(
      {required this.toilet_id,
      required this.file_name,
      required this.has_main});

  factory _$UpdateToiletMainImageParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateToiletMainImageParamsImplFromJson(json);

  @override
  final String toilet_id;
  @override
  final String file_name;
  @override
  final bool has_main;

  @override
  String toString() {
    return 'UpdateToiletMainImageParams(toilet_id: $toilet_id, file_name: $file_name, has_main: $has_main)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateToiletMainImageParamsImpl &&
            (identical(other.toilet_id, toilet_id) ||
                other.toilet_id == toilet_id) &&
            (identical(other.file_name, file_name) ||
                other.file_name == file_name) &&
            (identical(other.has_main, has_main) ||
                other.has_main == has_main));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, toilet_id, file_name, has_main);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateToiletMainImageParamsImplCopyWith<_$UpdateToiletMainImageParamsImpl>
      get copyWith => __$$UpdateToiletMainImageParamsImplCopyWithImpl<
          _$UpdateToiletMainImageParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateToiletMainImageParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateToiletMainImageParams
    implements UpdateToiletMainImageParams {
  factory _UpdateToiletMainImageParams(
      {required final String toilet_id,
      required final String file_name,
      required final bool has_main}) = _$UpdateToiletMainImageParamsImpl;

  factory _UpdateToiletMainImageParams.fromJson(Map<String, dynamic> json) =
      _$UpdateToiletMainImageParamsImpl.fromJson;

  @override
  String get toilet_id;
  @override
  String get file_name;
  @override
  bool get has_main;
  @override
  @JsonKey(ignore: true)
  _$$UpdateToiletMainImageParamsImplCopyWith<_$UpdateToiletMainImageParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
