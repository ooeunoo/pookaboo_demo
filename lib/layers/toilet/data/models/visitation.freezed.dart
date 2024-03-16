// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visitation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Visitation _$VisitationFromJson(Map<String, dynamic> json) {
  return _Visitation.fromJson(json);
}

/// @nodoc
mixin _$Visitation {
  int get id => throw _privateConstructorUsedError;
  AppUser? get user => throw _privateConstructorUsedError;
  Toilet get toilet => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitationCopyWith<Visitation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitationCopyWith<$Res> {
  factory $VisitationCopyWith(
          Visitation value, $Res Function(Visitation) then) =
      _$VisitationCopyWithImpl<$Res, Visitation>;
  @useResult
  $Res call({int id, AppUser? user, Toilet toilet, DateTime created_at});

  $AppUserCopyWith<$Res>? get user;
  $ToiletCopyWith<$Res> get toilet;
}

/// @nodoc
class _$VisitationCopyWithImpl<$Res, $Val extends Visitation>
    implements $VisitationCopyWith<$Res> {
  _$VisitationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? toilet = null,
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
      toilet: null == toilet
          ? _value.toilet
          : toilet // ignore: cast_nullable_to_non_nullable
              as Toilet,
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
  $ToiletCopyWith<$Res> get toilet {
    return $ToiletCopyWith<$Res>(_value.toilet, (value) {
      return _then(_value.copyWith(toilet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VisitationImplCopyWith<$Res>
    implements $VisitationCopyWith<$Res> {
  factory _$$VisitationImplCopyWith(
          _$VisitationImpl value, $Res Function(_$VisitationImpl) then) =
      __$$VisitationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, AppUser? user, Toilet toilet, DateTime created_at});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $ToiletCopyWith<$Res> get toilet;
}

/// @nodoc
class __$$VisitationImplCopyWithImpl<$Res>
    extends _$VisitationCopyWithImpl<$Res, _$VisitationImpl>
    implements _$$VisitationImplCopyWith<$Res> {
  __$$VisitationImplCopyWithImpl(
      _$VisitationImpl _value, $Res Function(_$VisitationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? toilet = null,
    Object? created_at = null,
  }) {
    return _then(_$VisitationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      toilet: null == toilet
          ? _value.toilet
          : toilet // ignore: cast_nullable_to_non_nullable
              as Toilet,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisitationImpl implements _Visitation {
  _$VisitationImpl(
      {required this.id,
      required this.user,
      required this.toilet,
      required this.created_at});

  factory _$VisitationImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitationImplFromJson(json);

  @override
  final int id;
  @override
  final AppUser? user;
  @override
  final Toilet toilet;
  @override
  final DateTime created_at;

  @override
  String toString() {
    return 'Visitation(id: $id, user: $user, toilet: $toilet, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.toilet, toilet) || other.toilet == toilet) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, toilet, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitationImplCopyWith<_$VisitationImpl> get copyWith =>
      __$$VisitationImplCopyWithImpl<_$VisitationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitationImplToJson(
      this,
    );
  }
}

abstract class _Visitation implements Visitation {
  factory _Visitation(
      {required final int id,
      required final AppUser? user,
      required final Toilet toilet,
      required final DateTime created_at}) = _$VisitationImpl;

  factory _Visitation.fromJson(Map<String, dynamic> json) =
      _$VisitationImpl.fromJson;

  @override
  int get id;
  @override
  AppUser? get user;
  @override
  Toilet get toilet;
  @override
  DateTime get created_at;
  @override
  @JsonKey(ignore: true)
  _$$VisitationImplCopyWith<_$VisitationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
