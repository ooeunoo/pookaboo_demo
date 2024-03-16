// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserParams _$UpdateUserParamsFromJson(Map<String, dynamic> json) {
  return _UpdateUserParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserParams {
  String? get nickname => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserParamsCopyWith<UpdateUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserParamsCopyWith<$Res> {
  factory $UpdateUserParamsCopyWith(
          UpdateUserParams value, $Res Function(UpdateUserParams) then) =
      _$UpdateUserParamsCopyWithImpl<$Res, UpdateUserParams>;
  @useResult
  $Res call({String? nickname, String? phone, Gender? gender, String? age});
}

/// @nodoc
class _$UpdateUserParamsCopyWithImpl<$Res, $Val extends UpdateUserParams>
    implements $UpdateUserParamsCopyWith<$Res> {
  _$UpdateUserParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserParamsImplCopyWith<$Res>
    implements $UpdateUserParamsCopyWith<$Res> {
  factory _$$UpdateUserParamsImplCopyWith(_$UpdateUserParamsImpl value,
          $Res Function(_$UpdateUserParamsImpl) then) =
      __$$UpdateUserParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nickname, String? phone, Gender? gender, String? age});
}

/// @nodoc
class __$$UpdateUserParamsImplCopyWithImpl<$Res>
    extends _$UpdateUserParamsCopyWithImpl<$Res, _$UpdateUserParamsImpl>
    implements _$$UpdateUserParamsImplCopyWith<$Res> {
  __$$UpdateUserParamsImplCopyWithImpl(_$UpdateUserParamsImpl _value,
      $Res Function(_$UpdateUserParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? age = freezed,
  }) {
    return _then(_$UpdateUserParamsImpl(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserParamsImpl implements _UpdateUserParams {
  _$UpdateUserParamsImpl(
      {this.nickname = null,
      this.phone = null,
      this.gender = null,
      this.age = null});

  factory _$UpdateUserParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? nickname;
  @override
  @JsonKey()
  final String? phone;
  @override
  @JsonKey()
  final Gender? gender;
  @override
  @JsonKey()
  final String? age;

  @override
  String toString() {
    return 'UpdateUserParams(nickname: $nickname, phone: $phone, gender: $gender, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserParamsImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, phone, gender, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserParamsImplCopyWith<_$UpdateUserParamsImpl> get copyWith =>
      __$$UpdateUserParamsImplCopyWithImpl<_$UpdateUserParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserParams implements UpdateUserParams {
  factory _UpdateUserParams(
      {final String? nickname,
      final String? phone,
      final Gender? gender,
      final String? age}) = _$UpdateUserParamsImpl;

  factory _UpdateUserParams.fromJson(Map<String, dynamic> json) =
      _$UpdateUserParamsImpl.fromJson;

  @override
  String? get nickname;
  @override
  String? get phone;
  @override
  Gender? get gender;
  @override
  String? get age;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserParamsImplCopyWith<_$UpdateUserParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
