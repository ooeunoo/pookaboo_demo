// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_inquiry_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateUserInquiryParams _$CreateUserInquiryParamsFromJson(
    Map<String, dynamic> json) {
  return _CreateUserInquiryParams.fromJson(json);
}

/// @nodoc
mixin _$CreateUserInquiryParams {
  int get toilet_id => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  String get inquiry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserInquiryParamsCopyWith<CreateUserInquiryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserInquiryParamsCopyWith<$Res> {
  factory $CreateUserInquiryParamsCopyWith(CreateUserInquiryParams value,
          $Res Function(CreateUserInquiryParams) then) =
      _$CreateUserInquiryParamsCopyWithImpl<$Res, CreateUserInquiryParams>;
  @useResult
  $Res call({int toilet_id, String user_id, String inquiry});
}

/// @nodoc
class _$CreateUserInquiryParamsCopyWithImpl<$Res,
        $Val extends CreateUserInquiryParams>
    implements $CreateUserInquiryParamsCopyWith<$Res> {
  _$CreateUserInquiryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toilet_id = null,
    Object? user_id = null,
    Object? inquiry = null,
  }) {
    return _then(_value.copyWith(
      toilet_id: null == toilet_id
          ? _value.toilet_id
          : toilet_id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      inquiry: null == inquiry
          ? _value.inquiry
          : inquiry // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserInquiryParamsImplCopyWith<$Res>
    implements $CreateUserInquiryParamsCopyWith<$Res> {
  factory _$$CreateUserInquiryParamsImplCopyWith(
          _$CreateUserInquiryParamsImpl value,
          $Res Function(_$CreateUserInquiryParamsImpl) then) =
      __$$CreateUserInquiryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int toilet_id, String user_id, String inquiry});
}

/// @nodoc
class __$$CreateUserInquiryParamsImplCopyWithImpl<$Res>
    extends _$CreateUserInquiryParamsCopyWithImpl<$Res,
        _$CreateUserInquiryParamsImpl>
    implements _$$CreateUserInquiryParamsImplCopyWith<$Res> {
  __$$CreateUserInquiryParamsImplCopyWithImpl(
      _$CreateUserInquiryParamsImpl _value,
      $Res Function(_$CreateUserInquiryParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toilet_id = null,
    Object? user_id = null,
    Object? inquiry = null,
  }) {
    return _then(_$CreateUserInquiryParamsImpl(
      toilet_id: null == toilet_id
          ? _value.toilet_id
          : toilet_id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      inquiry: null == inquiry
          ? _value.inquiry
          : inquiry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserInquiryParamsImpl implements _CreateUserInquiryParams {
  _$CreateUserInquiryParamsImpl(
      {required this.toilet_id, required this.user_id, required this.inquiry});

  factory _$CreateUserInquiryParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserInquiryParamsImplFromJson(json);

  @override
  final int toilet_id;
  @override
  final String user_id;
  @override
  final String inquiry;

  @override
  String toString() {
    return 'CreateUserInquiryParams(toilet_id: $toilet_id, user_id: $user_id, inquiry: $inquiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserInquiryParamsImpl &&
            (identical(other.toilet_id, toilet_id) ||
                other.toilet_id == toilet_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.inquiry, inquiry) || other.inquiry == inquiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, toilet_id, user_id, inquiry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserInquiryParamsImplCopyWith<_$CreateUserInquiryParamsImpl>
      get copyWith => __$$CreateUserInquiryParamsImplCopyWithImpl<
          _$CreateUserInquiryParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserInquiryParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateUserInquiryParams implements CreateUserInquiryParams {
  factory _CreateUserInquiryParams(
      {required final int toilet_id,
      required final String user_id,
      required final String inquiry}) = _$CreateUserInquiryParamsImpl;

  factory _CreateUserInquiryParams.fromJson(Map<String, dynamic> json) =
      _$CreateUserInquiryParamsImpl.fromJson;

  @override
  int get toilet_id;
  @override
  String get user_id;
  @override
  String get inquiry;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserInquiryParamsImplCopyWith<_$CreateUserInquiryParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
