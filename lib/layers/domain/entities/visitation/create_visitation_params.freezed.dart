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
  int get toiletId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

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
  $Res call({int toiletId, String userId});
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
    Object? toiletId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      toiletId: null == toiletId
          ? _value.toiletId
          : toiletId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
  $Res call({int toiletId, String userId});
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
    Object? toiletId = null,
    Object? userId = null,
  }) {
    return _then(_$CreateVisitationParamsImpl(
      toiletId: null == toiletId
          ? _value.toiletId
          : toiletId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateVisitationParamsImpl implements _CreateVisitationParams {
  _$CreateVisitationParamsImpl({required this.toiletId, required this.userId});

  factory _$CreateVisitationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateVisitationParamsImplFromJson(json);

  @override
  final int toiletId;
  @override
  final String userId;

  @override
  String toString() {
    return 'CreateVisitationParams(toiletId: $toiletId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateVisitationParamsImpl &&
            (identical(other.toiletId, toiletId) ||
                other.toiletId == toiletId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, toiletId, userId);

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
      {required final int toiletId,
      required final String userId}) = _$CreateVisitationParamsImpl;

  factory _CreateVisitationParams.fromJson(Map<String, dynamic> json) =
      _$CreateVisitationParamsImpl.fromJson;

  @override
  int get toiletId;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$CreateVisitationParamsImplCopyWith<_$CreateVisitationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
