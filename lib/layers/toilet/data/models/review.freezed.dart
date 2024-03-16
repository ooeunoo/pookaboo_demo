// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  int get id => throw _privateConstructorUsedError;
  AppUser? get user => throw _privateConstructorUsedError;
  Toilet? get toilet => throw _privateConstructorUsedError;
  double get cleanliness => throw _privateConstructorUsedError;
  double get safety => throw _privateConstructorUsedError;
  double get management => throw _privateConstructorUsedError;
  double get convenience => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  DateTime get modified_at => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {int id,
      AppUser? user,
      Toilet? toilet,
      double cleanliness,
      double safety,
      double management,
      double convenience,
      String comment,
      DateTime modified_at,
      DateTime created_at});

  $AppUserCopyWith<$Res>? get user;
  $ToiletCopyWith<$Res>? get toilet;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? toilet = freezed,
    Object? cleanliness = null,
    Object? safety = null,
    Object? management = null,
    Object? convenience = null,
    Object? comment = null,
    Object? modified_at = null,
    Object? created_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      toilet: freezed == toilet
          ? _value.toilet
          : toilet // ignore: cast_nullable_to_non_nullable
              as Toilet?,
      cleanliness: null == cleanliness
          ? _value.cleanliness
          : cleanliness // ignore: cast_nullable_to_non_nullable
              as double,
      safety: null == safety
          ? _value.safety
          : safety // ignore: cast_nullable_to_non_nullable
              as double,
      management: null == management
          ? _value.management
          : management // ignore: cast_nullable_to_non_nullable
              as double,
      convenience: null == convenience
          ? _value.convenience
          : convenience // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      modified_at: null == modified_at
          ? _value.modified_at
          : modified_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ToiletCopyWith<$Res>? get toilet {
    if (_value.toilet == null) {
      return null;
    }

    return $ToiletCopyWith<$Res>(_value.toilet!, (value) {
      return _then(_value.copyWith(toilet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      AppUser? user,
      Toilet? toilet,
      double cleanliness,
      double safety,
      double management,
      double convenience,
      String comment,
      DateTime modified_at,
      DateTime created_at});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $ToiletCopyWith<$Res>? get toilet;
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? toilet = freezed,
    Object? cleanliness = null,
    Object? safety = null,
    Object? management = null,
    Object? convenience = null,
    Object? comment = null,
    Object? modified_at = null,
    Object? created_at = null,
  }) {
    return _then(_$ReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      toilet: freezed == toilet
          ? _value.toilet
          : toilet // ignore: cast_nullable_to_non_nullable
              as Toilet?,
      cleanliness: null == cleanliness
          ? _value.cleanliness
          : cleanliness // ignore: cast_nullable_to_non_nullable
              as double,
      safety: null == safety
          ? _value.safety
          : safety // ignore: cast_nullable_to_non_nullable
              as double,
      management: null == management
          ? _value.management
          : management // ignore: cast_nullable_to_non_nullable
              as double,
      convenience: null == convenience
          ? _value.convenience
          : convenience // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      modified_at: null == modified_at
          ? _value.modified_at
          : modified_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  _$ReviewImpl(
      {required this.id,
      required this.user,
      required this.toilet,
      required this.cleanliness,
      required this.safety,
      required this.management,
      required this.convenience,
      required this.comment,
      required this.modified_at,
      required this.created_at});

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  final int id;
  @override
  final AppUser? user;
  @override
  final Toilet? toilet;
  @override
  final double cleanliness;
  @override
  final double safety;
  @override
  final double management;
  @override
  final double convenience;
  @override
  final String comment;
  @override
  final DateTime modified_at;
  @override
  final DateTime created_at;

  @override
  String toString() {
    return 'Review(id: $id, user: $user, toilet: $toilet, cleanliness: $cleanliness, safety: $safety, management: $management, convenience: $convenience, comment: $comment, modified_at: $modified_at, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.toilet, toilet) || other.toilet == toilet) &&
            (identical(other.cleanliness, cleanliness) ||
                other.cleanliness == cleanliness) &&
            (identical(other.safety, safety) || other.safety == safety) &&
            (identical(other.management, management) ||
                other.management == management) &&
            (identical(other.convenience, convenience) ||
                other.convenience == convenience) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.modified_at, modified_at) ||
                other.modified_at == modified_at) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, toilet, cleanliness,
      safety, management, convenience, comment, modified_at, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  factory _Review(
      {required final int id,
      required final AppUser? user,
      required final Toilet? toilet,
      required final double cleanliness,
      required final double safety,
      required final double management,
      required final double convenience,
      required final String comment,
      required final DateTime modified_at,
      required final DateTime created_at}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  int get id;
  @override
  AppUser? get user;
  @override
  Toilet? get toilet;
  @override
  double get cleanliness;
  @override
  double get safety;
  @override
  double get management;
  @override
  double get convenience;
  @override
  String get comment;
  @override
  DateTime get modified_at;
  @override
  DateTime get created_at;
  @override
  @JsonKey(ignore: true)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
