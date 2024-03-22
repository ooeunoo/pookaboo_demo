// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_visitation_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateVisitationParams _$CreateVisitationParamsFromJson(
    Map<String, dynamic> json) {
  return _CreateVisitationParams.fromJson(json);
}

/// @nodoc
mixin _$CreateVisitationParams {
  int get toilet_id => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateVisitationParamsCopyWith<CreateVisitationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateVisitationParamsCopyWith<$Res> {
  factory $CreateVisitationParamsCopyWith(CreateVisitationParams value,
          $Res Function(CreateVisitationParams) then) =
      _$CreateVisitationParamsCopyWithImpl<$Res, CreateVisitationParams>;
  @useResult
  $Res call({int toilet_id, String user_id});
}

/// @nodoc
class _$CreateVisitationParamsCopyWithImpl<$Res,
        $Val extends CreateVisitationParams>
    implements $CreateVisitationParamsCopyWith<$Res> {
  _$CreateVisitationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toilet_id = null,
    Object? user_id = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateVisitationParamsImplCopyWith<$Res>
    implements $CreateVisitationParamsCopyWith<$Res> {
  factory _$$CreateVisitationParamsImplCopyWith(
          _$CreateVisitationParamsImpl value,
          $Res Function(_$CreateVisitationParamsImpl) then) =
      __$$CreateVisitationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int toilet_id, String user_id});
}

/// @nodoc
class __$$CreateVisitationParamsImplCopyWithImpl<$Res>
    extends _$CreateVisitationParamsCopyWithImpl<$Res,
        _$CreateVisitationParamsImpl>
    implements _$$CreateVisitationParamsImplCopyWith<$Res> {
  __$$CreateVisitationParamsImplCopyWithImpl(
      _$CreateVisitationParamsImpl _value,
      $Res Function(_$CreateVisitationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toilet_id = null,
    Object? user_id = null,
  }) {
    return _then(_$CreateVisitationParamsImpl(
      toilet_id: null == toilet_id
          ? _value.toilet_id
          : toilet_id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateVisitationParamsImpl implements _CreateVisitationParams {
  _$CreateVisitationParamsImpl(
      {required this.toilet_id, required this.user_id});

  factory _$CreateVisitationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateVisitationParamsImplFromJson(json);

  @override
  final int toilet_id;
  @override
  final String user_id;

  @override
  String toString() {
    return 'CreateVisitationParams(toilet_id: $toilet_id, user_id: $user_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateVisitationParamsImpl &&
            (identical(other.toilet_id, toilet_id) ||
                other.toilet_id == toilet_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, toilet_id, user_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateVisitationParamsImplCopyWith<_$CreateVisitationParamsImpl>
      get copyWith => __$$CreateVisitationParamsImplCopyWithImpl<
          _$CreateVisitationParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateVisitationParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateVisitationParams implements CreateVisitationParams {
  factory _CreateVisitationParams(
      {required final int toilet_id,
      required final String user_id}) = _$CreateVisitationParamsImpl;

  factory _CreateVisitationParams.fromJson(Map<String, dynamic> json) =
      _$CreateVisitationParamsImpl.fromJson;

  @override
  int get toilet_id;
  @override
  String get user_id;
  @override
  @JsonKey(ignore: true)
  _$$CreateVisitationParamsImplCopyWith<_$CreateVisitationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
