// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_review_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateReviewParams _$CreateReviewParamsFromJson(Map<String, dynamic> json) {
  return _CreateReviewParams.fromJson(json);
}

/// @nodoc
mixin _$CreateReviewParams {
  int get toiletId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get cleanliness => throw _privateConstructorUsedError;
  int get convenience => throw _privateConstructorUsedError;
  int get safety => throw _privateConstructorUsedError;
  int get management => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateReviewParamsCopyWith<CreateReviewParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReviewParamsCopyWith<$Res> {
  factory $CreateReviewParamsCopyWith(
          CreateReviewParams value, $Res Function(CreateReviewParams) then) =
      _$CreateReviewParamsCopyWithImpl<$Res, CreateReviewParams>;
  @useResult
  $Res call(
      {int toiletId,
      String userId,
      int cleanliness,
      int convenience,
      int safety,
      int management,
      String comment});
}

/// @nodoc
class _$CreateReviewParamsCopyWithImpl<$Res, $Val extends CreateReviewParams>
    implements $CreateReviewParamsCopyWith<$Res> {
  _$CreateReviewParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toiletId = null,
    Object? userId = null,
    Object? cleanliness = null,
    Object? convenience = null,
    Object? safety = null,
    Object? management = null,
    Object? comment = null,
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
      cleanliness: null == cleanliness
          ? _value.cleanliness
          : cleanliness // ignore: cast_nullable_to_non_nullable
              as int,
      convenience: null == convenience
          ? _value.convenience
          : convenience // ignore: cast_nullable_to_non_nullable
              as int,
      safety: null == safety
          ? _value.safety
          : safety // ignore: cast_nullable_to_non_nullable
              as int,
      management: null == management
          ? _value.management
          : management // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateReviewParamsImplCopyWith<$Res>
    implements $CreateReviewParamsCopyWith<$Res> {
  factory _$$CreateReviewParamsImplCopyWith(_$CreateReviewParamsImpl value,
          $Res Function(_$CreateReviewParamsImpl) then) =
      __$$CreateReviewParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int toiletId,
      String userId,
      int cleanliness,
      int convenience,
      int safety,
      int management,
      String comment});
}

/// @nodoc
class __$$CreateReviewParamsImplCopyWithImpl<$Res>
    extends _$CreateReviewParamsCopyWithImpl<$Res, _$CreateReviewParamsImpl>
    implements _$$CreateReviewParamsImplCopyWith<$Res> {
  __$$CreateReviewParamsImplCopyWithImpl(_$CreateReviewParamsImpl _value,
      $Res Function(_$CreateReviewParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toiletId = null,
    Object? userId = null,
    Object? cleanliness = null,
    Object? convenience = null,
    Object? safety = null,
    Object? management = null,
    Object? comment = null,
  }) {
    return _then(_$CreateReviewParamsImpl(
      toiletId: null == toiletId
          ? _value.toiletId
          : toiletId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      cleanliness: null == cleanliness
          ? _value.cleanliness
          : cleanliness // ignore: cast_nullable_to_non_nullable
              as int,
      convenience: null == convenience
          ? _value.convenience
          : convenience // ignore: cast_nullable_to_non_nullable
              as int,
      safety: null == safety
          ? _value.safety
          : safety // ignore: cast_nullable_to_non_nullable
              as int,
      management: null == management
          ? _value.management
          : management // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateReviewParamsImpl implements _CreateReviewParams {
  _$CreateReviewParamsImpl(
      {required this.toiletId,
      required this.userId,
      this.cleanliness = 0,
      this.convenience = 0,
      this.safety = 0,
      this.management = 0,
      this.comment = ''});

  factory _$CreateReviewParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateReviewParamsImplFromJson(json);

  @override
  final int toiletId;
  @override
  final String userId;
  @override
  @JsonKey()
  final int cleanliness;
  @override
  @JsonKey()
  final int convenience;
  @override
  @JsonKey()
  final int safety;
  @override
  @JsonKey()
  final int management;
  @override
  @JsonKey()
  final String comment;

  @override
  String toString() {
    return 'CreateReviewParams(toiletId: $toiletId, userId: $userId, cleanliness: $cleanliness, convenience: $convenience, safety: $safety, management: $management, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReviewParamsImpl &&
            (identical(other.toiletId, toiletId) ||
                other.toiletId == toiletId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.cleanliness, cleanliness) ||
                other.cleanliness == cleanliness) &&
            (identical(other.convenience, convenience) ||
                other.convenience == convenience) &&
            (identical(other.safety, safety) || other.safety == safety) &&
            (identical(other.management, management) ||
                other.management == management) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, toiletId, userId, cleanliness,
      convenience, safety, management, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReviewParamsImplCopyWith<_$CreateReviewParamsImpl> get copyWith =>
      __$$CreateReviewParamsImplCopyWithImpl<_$CreateReviewParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateReviewParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateReviewParams implements CreateReviewParams {
  factory _CreateReviewParams(
      {required final int toiletId,
      required final String userId,
      final int cleanliness,
      final int convenience,
      final int safety,
      final int management,
      final String comment}) = _$CreateReviewParamsImpl;

  factory _CreateReviewParams.fromJson(Map<String, dynamic> json) =
      _$CreateReviewParamsImpl.fromJson;

  @override
  int get toiletId;
  @override
  String get userId;
  @override
  int get cleanliness;
  @override
  int get convenience;
  @override
  int get safety;
  @override
  int get management;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$CreateReviewParamsImplCopyWith<_$CreateReviewParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
