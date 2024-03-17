// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_nearby_toilets_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetNearByToiletsParams _$GetNearByToiletsParamsFromJson(
    Map<String, dynamic> json) {
  return _GetNearByToiletsParams.fromJson(json);
}

/// @nodoc
mixin _$GetNearByToiletsParams {
  LatLngBounds get bounds => throw _privateConstructorUsedError;
  bool get passwordFilter => throw _privateConstructorUsedError;
  bool get timeFilter => throw _privateConstructorUsedError;
  bool get genderFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNearByToiletsParamsCopyWith<GetNearByToiletsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNearByToiletsParamsCopyWith<$Res> {
  factory $GetNearByToiletsParamsCopyWith(GetNearByToiletsParams value,
          $Res Function(GetNearByToiletsParams) then) =
      _$GetNearByToiletsParamsCopyWithImpl<$Res, GetNearByToiletsParams>;
  @useResult
  $Res call(
      {LatLngBounds bounds,
      bool passwordFilter,
      bool timeFilter,
      bool genderFilter});
}

/// @nodoc
class _$GetNearByToiletsParamsCopyWithImpl<$Res,
        $Val extends GetNearByToiletsParams>
    implements $GetNearByToiletsParamsCopyWith<$Res> {
  _$GetNearByToiletsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = null,
    Object? passwordFilter = null,
    Object? timeFilter = null,
    Object? genderFilter = null,
  }) {
    return _then(_value.copyWith(
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as LatLngBounds,
      passwordFilter: null == passwordFilter
          ? _value.passwordFilter
          : passwordFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      timeFilter: null == timeFilter
          ? _value.timeFilter
          : timeFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      genderFilter: null == genderFilter
          ? _value.genderFilter
          : genderFilter // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNearByToiletsParamsImplCopyWith<$Res>
    implements $GetNearByToiletsParamsCopyWith<$Res> {
  factory _$$GetNearByToiletsParamsImplCopyWith(
          _$GetNearByToiletsParamsImpl value,
          $Res Function(_$GetNearByToiletsParamsImpl) then) =
      __$$GetNearByToiletsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LatLngBounds bounds,
      bool passwordFilter,
      bool timeFilter,
      bool genderFilter});
}

/// @nodoc
class __$$GetNearByToiletsParamsImplCopyWithImpl<$Res>
    extends _$GetNearByToiletsParamsCopyWithImpl<$Res,
        _$GetNearByToiletsParamsImpl>
    implements _$$GetNearByToiletsParamsImplCopyWith<$Res> {
  __$$GetNearByToiletsParamsImplCopyWithImpl(
      _$GetNearByToiletsParamsImpl _value,
      $Res Function(_$GetNearByToiletsParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = null,
    Object? passwordFilter = null,
    Object? timeFilter = null,
    Object? genderFilter = null,
  }) {
    return _then(_$GetNearByToiletsParamsImpl(
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as LatLngBounds,
      passwordFilter: null == passwordFilter
          ? _value.passwordFilter
          : passwordFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      timeFilter: null == timeFilter
          ? _value.timeFilter
          : timeFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      genderFilter: null == genderFilter
          ? _value.genderFilter
          : genderFilter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetNearByToiletsParamsImpl implements _GetNearByToiletsParams {
  _$GetNearByToiletsParamsImpl(
      {required this.bounds,
      this.passwordFilter = true,
      this.timeFilter = false,
      this.genderFilter = false});

  factory _$GetNearByToiletsParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetNearByToiletsParamsImplFromJson(json);

  @override
  final LatLngBounds bounds;
  @override
  @JsonKey()
  final bool passwordFilter;
  @override
  @JsonKey()
  final bool timeFilter;
  @override
  @JsonKey()
  final bool genderFilter;

  @override
  String toString() {
    return 'GetNearByToiletsParams(bounds: $bounds, passwordFilter: $passwordFilter, timeFilter: $timeFilter, genderFilter: $genderFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNearByToiletsParamsImpl &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            (identical(other.passwordFilter, passwordFilter) ||
                other.passwordFilter == passwordFilter) &&
            (identical(other.timeFilter, timeFilter) ||
                other.timeFilter == timeFilter) &&
            (identical(other.genderFilter, genderFilter) ||
                other.genderFilter == genderFilter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, bounds, passwordFilter, timeFilter, genderFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNearByToiletsParamsImplCopyWith<_$GetNearByToiletsParamsImpl>
      get copyWith => __$$GetNearByToiletsParamsImplCopyWithImpl<
          _$GetNearByToiletsParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNearByToiletsParamsImplToJson(
      this,
    );
  }
}

abstract class _GetNearByToiletsParams implements GetNearByToiletsParams {
  factory _GetNearByToiletsParams(
      {required final LatLngBounds bounds,
      final bool passwordFilter,
      final bool timeFilter,
      final bool genderFilter}) = _$GetNearByToiletsParamsImpl;

  factory _GetNearByToiletsParams.fromJson(Map<String, dynamic> json) =
      _$GetNearByToiletsParamsImpl.fromJson;

  @override
  LatLngBounds get bounds;
  @override
  bool get passwordFilter;
  @override
  bool get timeFilter;
  @override
  bool get genderFilter;
  @override
  @JsonKey(ignore: true)
  _$$GetNearByToiletsParamsImplCopyWith<_$GetNearByToiletsParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
