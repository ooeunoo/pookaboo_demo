// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_lat_lng.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MapLatLng _$MapLatLngFromJson(Map<String, dynamic> json) {
  return _MapLatLng.fromJson(json);
}

/// @nodoc
mixin _$MapLatLng {
  double get min_lat => throw _privateConstructorUsedError;
  double get min_lng => throw _privateConstructorUsedError;
  double get max_lat => throw _privateConstructorUsedError;
  double get max_lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapLatLngCopyWith<MapLatLng> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapLatLngCopyWith<$Res> {
  factory $MapLatLngCopyWith(MapLatLng value, $Res Function(MapLatLng) then) =
      _$MapLatLngCopyWithImpl<$Res, MapLatLng>;
  @useResult
  $Res call({double min_lat, double min_lng, double max_lat, double max_lng});
}

/// @nodoc
class _$MapLatLngCopyWithImpl<$Res, $Val extends MapLatLng>
    implements $MapLatLngCopyWith<$Res> {
  _$MapLatLngCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min_lat = null,
    Object? min_lng = null,
    Object? max_lat = null,
    Object? max_lng = null,
  }) {
    return _then(_value.copyWith(
      min_lat: null == min_lat
          ? _value.min_lat
          : min_lat // ignore: cast_nullable_to_non_nullable
              as double,
      min_lng: null == min_lng
          ? _value.min_lng
          : min_lng // ignore: cast_nullable_to_non_nullable
              as double,
      max_lat: null == max_lat
          ? _value.max_lat
          : max_lat // ignore: cast_nullable_to_non_nullable
              as double,
      max_lng: null == max_lng
          ? _value.max_lng
          : max_lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapLatLngImplCopyWith<$Res>
    implements $MapLatLngCopyWith<$Res> {
  factory _$$MapLatLngImplCopyWith(
          _$MapLatLngImpl value, $Res Function(_$MapLatLngImpl) then) =
      __$$MapLatLngImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double min_lat, double min_lng, double max_lat, double max_lng});
}

/// @nodoc
class __$$MapLatLngImplCopyWithImpl<$Res>
    extends _$MapLatLngCopyWithImpl<$Res, _$MapLatLngImpl>
    implements _$$MapLatLngImplCopyWith<$Res> {
  __$$MapLatLngImplCopyWithImpl(
      _$MapLatLngImpl _value, $Res Function(_$MapLatLngImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min_lat = null,
    Object? min_lng = null,
    Object? max_lat = null,
    Object? max_lng = null,
  }) {
    return _then(_$MapLatLngImpl(
      min_lat: null == min_lat
          ? _value.min_lat
          : min_lat // ignore: cast_nullable_to_non_nullable
              as double,
      min_lng: null == min_lng
          ? _value.min_lng
          : min_lng // ignore: cast_nullable_to_non_nullable
              as double,
      max_lat: null == max_lat
          ? _value.max_lat
          : max_lat // ignore: cast_nullable_to_non_nullable
              as double,
      max_lng: null == max_lng
          ? _value.max_lng
          : max_lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapLatLngImpl implements _MapLatLng {
  _$MapLatLngImpl(
      {required this.min_lat,
      required this.min_lng,
      required this.max_lat,
      required this.max_lng});

  factory _$MapLatLngImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapLatLngImplFromJson(json);

  @override
  final double min_lat;
  @override
  final double min_lng;
  @override
  final double max_lat;
  @override
  final double max_lng;

  @override
  String toString() {
    return 'MapLatLng(min_lat: $min_lat, min_lng: $min_lng, max_lat: $max_lat, max_lng: $max_lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapLatLngImpl &&
            (identical(other.min_lat, min_lat) || other.min_lat == min_lat) &&
            (identical(other.min_lng, min_lng) || other.min_lng == min_lng) &&
            (identical(other.max_lat, max_lat) || other.max_lat == max_lat) &&
            (identical(other.max_lng, max_lng) || other.max_lng == max_lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, min_lat, min_lng, max_lat, max_lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapLatLngImplCopyWith<_$MapLatLngImpl> get copyWith =>
      __$$MapLatLngImplCopyWithImpl<_$MapLatLngImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapLatLngImplToJson(
      this,
    );
  }
}

abstract class _MapLatLng implements MapLatLng {
  factory _MapLatLng(
      {required final double min_lat,
      required final double min_lng,
      required final double max_lat,
      required final double max_lng}) = _$MapLatLngImpl;

  factory _MapLatLng.fromJson(Map<String, dynamic> json) =
      _$MapLatLngImpl.fromJson;

  @override
  double get min_lat;
  @override
  double get min_lng;
  @override
  double get max_lat;
  @override
  double get max_lng;
  @override
  @JsonKey(ignore: true)
  _$$MapLatLngImplCopyWith<_$MapLatLngImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
