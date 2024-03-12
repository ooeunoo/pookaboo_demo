// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRouteParams _$GetRouteParamsFromJson(Map<String, dynamic> json) {
  return _GetRouteParams.fromJson(json);
}

/// @nodoc
mixin _$GetRouteParams {
  String get sName => throw _privateConstructorUsedError;
  double get sX => throw _privateConstructorUsedError;
  double get sY => throw _privateConstructorUsedError;
  String get eName => throw _privateConstructorUsedError;
  double get eX => throw _privateConstructorUsedError;
  double get eY => throw _privateConstructorUsedError;
  String get ids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRouteParamsCopyWith<GetRouteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRouteParamsCopyWith<$Res> {
  factory $GetRouteParamsCopyWith(
          GetRouteParams value, $Res Function(GetRouteParams) then) =
      _$GetRouteParamsCopyWithImpl<$Res, GetRouteParams>;
  @useResult
  $Res call(
      {String sName,
      double sX,
      double sY,
      String eName,
      double eX,
      double eY,
      String ids});
}

/// @nodoc
class _$GetRouteParamsCopyWithImpl<$Res, $Val extends GetRouteParams>
    implements $GetRouteParamsCopyWith<$Res> {
  _$GetRouteParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sName = null,
    Object? sX = null,
    Object? sY = null,
    Object? eName = null,
    Object? eX = null,
    Object? eY = null,
    Object? ids = null,
  }) {
    return _then(_value.copyWith(
      sName: null == sName
          ? _value.sName
          : sName // ignore: cast_nullable_to_non_nullable
              as String,
      sX: null == sX
          ? _value.sX
          : sX // ignore: cast_nullable_to_non_nullable
              as double,
      sY: null == sY
          ? _value.sY
          : sY // ignore: cast_nullable_to_non_nullable
              as double,
      eName: null == eName
          ? _value.eName
          : eName // ignore: cast_nullable_to_non_nullable
              as String,
      eX: null == eX
          ? _value.eX
          : eX // ignore: cast_nullable_to_non_nullable
              as double,
      eY: null == eY
          ? _value.eY
          : eY // ignore: cast_nullable_to_non_nullable
              as double,
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRouteParamsImplCopyWith<$Res>
    implements $GetRouteParamsCopyWith<$Res> {
  factory _$$GetRouteParamsImplCopyWith(_$GetRouteParamsImpl value,
          $Res Function(_$GetRouteParamsImpl) then) =
      __$$GetRouteParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sName,
      double sX,
      double sY,
      String eName,
      double eX,
      double eY,
      String ids});
}

/// @nodoc
class __$$GetRouteParamsImplCopyWithImpl<$Res>
    extends _$GetRouteParamsCopyWithImpl<$Res, _$GetRouteParamsImpl>
    implements _$$GetRouteParamsImplCopyWith<$Res> {
  __$$GetRouteParamsImplCopyWithImpl(
      _$GetRouteParamsImpl _value, $Res Function(_$GetRouteParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sName = null,
    Object? sX = null,
    Object? sY = null,
    Object? eName = null,
    Object? eX = null,
    Object? eY = null,
    Object? ids = null,
  }) {
    return _then(_$GetRouteParamsImpl(
      sName: null == sName
          ? _value.sName
          : sName // ignore: cast_nullable_to_non_nullable
              as String,
      sX: null == sX
          ? _value.sX
          : sX // ignore: cast_nullable_to_non_nullable
              as double,
      sY: null == sY
          ? _value.sY
          : sY // ignore: cast_nullable_to_non_nullable
              as double,
      eName: null == eName
          ? _value.eName
          : eName // ignore: cast_nullable_to_non_nullable
              as String,
      eX: null == eX
          ? _value.eX
          : eX // ignore: cast_nullable_to_non_nullable
              as double,
      eY: null == eY
          ? _value.eY
          : eY // ignore: cast_nullable_to_non_nullable
              as double,
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRouteParamsImpl implements _GetRouteParams {
  const _$GetRouteParamsImpl(
      {required this.sName,
      required this.sX,
      required this.sY,
      required this.eName,
      required this.eX,
      required this.eY,
      required this.ids});

  factory _$GetRouteParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRouteParamsImplFromJson(json);

  @override
  final String sName;
  @override
  final double sX;
  @override
  final double sY;
  @override
  final String eName;
  @override
  final double eX;
  @override
  final double eY;
  @override
  final String ids;

  @override
  String toString() {
    return 'GetRouteParams(sName: $sName, sX: $sX, sY: $sY, eName: $eName, eX: $eX, eY: $eY, ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRouteParamsImpl &&
            (identical(other.sName, sName) || other.sName == sName) &&
            (identical(other.sX, sX) || other.sX == sX) &&
            (identical(other.sY, sY) || other.sY == sY) &&
            (identical(other.eName, eName) || other.eName == eName) &&
            (identical(other.eX, eX) || other.eX == eX) &&
            (identical(other.eY, eY) || other.eY == eY) &&
            (identical(other.ids, ids) || other.ids == ids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sName, sX, sY, eName, eX, eY, ids);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRouteParamsImplCopyWith<_$GetRouteParamsImpl> get copyWith =>
      __$$GetRouteParamsImplCopyWithImpl<_$GetRouteParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRouteParamsImplToJson(
      this,
    );
  }
}

abstract class _GetRouteParams implements GetRouteParams {
  const factory _GetRouteParams(
      {required final String sName,
      required final double sX,
      required final double sY,
      required final String eName,
      required final double eX,
      required final double eY,
      required final String ids}) = _$GetRouteParamsImpl;

  factory _GetRouteParams.fromJson(Map<String, dynamic> json) =
      _$GetRouteParamsImpl.fromJson;

  @override
  String get sName;
  @override
  double get sX;
  @override
  double get sY;
  @override
  String get eName;
  @override
  double get eX;
  @override
  double get eY;
  @override
  String get ids;
  @override
  @JsonKey(ignore: true)
  _$$GetRouteParamsImplCopyWith<_$GetRouteParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetRouteResponse _$GetRouteResponseFromJson(Map<String, dynamic> json) {
  return _GetRouteResponse.fromJson(json);
}

/// @nodoc
mixin _$GetRouteResponse {
  List<Direction> get directions => throw _privateConstructorUsedError;
  Bound get bound => throw _privateConstructorUsedError;
  String get resultCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRouteResponseCopyWith<GetRouteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRouteResponseCopyWith<$Res> {
  factory $GetRouteResponseCopyWith(
          GetRouteResponse value, $Res Function(GetRouteResponse) then) =
      _$GetRouteResponseCopyWithImpl<$Res, GetRouteResponse>;
  @useResult
  $Res call({List<Direction> directions, Bound bound, String resultCode});

  $BoundCopyWith<$Res> get bound;
}

/// @nodoc
class _$GetRouteResponseCopyWithImpl<$Res, $Val extends GetRouteResponse>
    implements $GetRouteResponseCopyWith<$Res> {
  _$GetRouteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directions = null,
    Object? bound = null,
    Object? resultCode = null,
  }) {
    return _then(_value.copyWith(
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<Direction>,
      bound: null == bound
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as Bound,
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoundCopyWith<$Res> get bound {
    return $BoundCopyWith<$Res>(_value.bound, (value) {
      return _then(_value.copyWith(bound: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetRouteResponseImplCopyWith<$Res>
    implements $GetRouteResponseCopyWith<$Res> {
  factory _$$GetRouteResponseImplCopyWith(_$GetRouteResponseImpl value,
          $Res Function(_$GetRouteResponseImpl) then) =
      __$$GetRouteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Direction> directions, Bound bound, String resultCode});

  @override
  $BoundCopyWith<$Res> get bound;
}

/// @nodoc
class __$$GetRouteResponseImplCopyWithImpl<$Res>
    extends _$GetRouteResponseCopyWithImpl<$Res, _$GetRouteResponseImpl>
    implements _$$GetRouteResponseImplCopyWith<$Res> {
  __$$GetRouteResponseImplCopyWithImpl(_$GetRouteResponseImpl _value,
      $Res Function(_$GetRouteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directions = null,
    Object? bound = null,
    Object? resultCode = null,
  }) {
    return _then(_$GetRouteResponseImpl(
      directions: null == directions
          ? _value._directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<Direction>,
      bound: null == bound
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as Bound,
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRouteResponseImpl implements _GetRouteResponse {
  const _$GetRouteResponseImpl(
      {required final List<Direction> directions,
      required this.bound,
      required this.resultCode})
      : _directions = directions;

  factory _$GetRouteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRouteResponseImplFromJson(json);

  final List<Direction> _directions;
  @override
  List<Direction> get directions {
    if (_directions is EqualUnmodifiableListView) return _directions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_directions);
  }

  @override
  final Bound bound;
  @override
  final String resultCode;

  @override
  String toString() {
    return 'GetRouteResponse(directions: $directions, bound: $bound, resultCode: $resultCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRouteResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._directions, _directions) &&
            (identical(other.bound, bound) || other.bound == bound) &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_directions), bound, resultCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRouteResponseImplCopyWith<_$GetRouteResponseImpl> get copyWith =>
      __$$GetRouteResponseImplCopyWithImpl<_$GetRouteResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRouteResponseImplToJson(
      this,
    );
  }
}

abstract class _GetRouteResponse implements GetRouteResponse {
  const factory _GetRouteResponse(
      {required final List<Direction> directions,
      required final Bound bound,
      required final String resultCode}) = _$GetRouteResponseImpl;

  factory _GetRouteResponse.fromJson(Map<String, dynamic> json) =
      _$GetRouteResponseImpl.fromJson;

  @override
  List<Direction> get directions;
  @override
  Bound get bound;
  @override
  String get resultCode;
  @override
  @JsonKey(ignore: true)
  _$$GetRouteResponseImplCopyWith<_$GetRouteResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bound _$BoundFromJson(Map<String, dynamic> json) {
  return _Bound.fromJson(json);
}

/// @nodoc
mixin _$Bound {
  int get top => throw _privateConstructorUsedError;
  int get left => throw _privateConstructorUsedError;
  int get bottom => throw _privateConstructorUsedError;
  int get right => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoundCopyWith<Bound> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundCopyWith<$Res> {
  factory $BoundCopyWith(Bound value, $Res Function(Bound) then) =
      _$BoundCopyWithImpl<$Res, Bound>;
  @useResult
  $Res call({int top, int left, int bottom, int right});
}

/// @nodoc
class _$BoundCopyWithImpl<$Res, $Val extends Bound>
    implements $BoundCopyWith<$Res> {
  _$BoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
    Object? left = null,
    Object? bottom = null,
    Object? right = null,
  }) {
    return _then(_value.copyWith(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      bottom: null == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as int,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoundImplCopyWith<$Res> implements $BoundCopyWith<$Res> {
  factory _$$BoundImplCopyWith(
          _$BoundImpl value, $Res Function(_$BoundImpl) then) =
      __$$BoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int top, int left, int bottom, int right});
}

/// @nodoc
class __$$BoundImplCopyWithImpl<$Res>
    extends _$BoundCopyWithImpl<$Res, _$BoundImpl>
    implements _$$BoundImplCopyWith<$Res> {
  __$$BoundImplCopyWithImpl(
      _$BoundImpl _value, $Res Function(_$BoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
    Object? left = null,
    Object? bottom = null,
    Object? right = null,
  }) {
    return _then(_$BoundImpl(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      bottom: null == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as int,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoundImpl implements _Bound {
  const _$BoundImpl(
      {required this.top,
      required this.left,
      required this.bottom,
      required this.right});

  factory _$BoundImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoundImplFromJson(json);

  @override
  final int top;
  @override
  final int left;
  @override
  final int bottom;
  @override
  final int right;

  @override
  String toString() {
    return 'Bound(top: $top, left: $left, bottom: $bottom, right: $right)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoundImpl &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.right, right) || other.right == right));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, top, left, bottom, right);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoundImplCopyWith<_$BoundImpl> get copyWith =>
      __$$BoundImplCopyWithImpl<_$BoundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoundImplToJson(
      this,
    );
  }
}

abstract class _Bound implements Bound {
  const factory _Bound(
      {required final int top,
      required final int left,
      required final int bottom,
      required final int right}) = _$BoundImpl;

  factory _Bound.fromJson(Map<String, dynamic> json) = _$BoundImpl.fromJson;

  @override
  int get top;
  @override
  int get left;
  @override
  int get bottom;
  @override
  int get right;
  @override
  @JsonKey(ignore: true)
  _$$BoundImplCopyWith<_$BoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Direction _$DirectionFromJson(Map<String, dynamic> json) {
  return _Direction.fromJson(json);
}

/// @nodoc
mixin _$Direction {
  String get routeMode => throw _privateConstructorUsedError;
  Bound get bound => throw _privateConstructorUsedError;
  String get resultCode => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  List<Section> get sections => throw _privateConstructorUsedError;
  GroupInfoMap get groupInfoMap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionCopyWith<Direction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionCopyWith<$Res> {
  factory $DirectionCopyWith(Direction value, $Res Function(Direction) then) =
      _$DirectionCopyWithImpl<$Res, Direction>;
  @useResult
  $Res call(
      {String routeMode,
      Bound bound,
      String resultCode,
      int length,
      int time,
      List<Section> sections,
      GroupInfoMap groupInfoMap});

  $BoundCopyWith<$Res> get bound;
  $GroupInfoMapCopyWith<$Res> get groupInfoMap;
}

/// @nodoc
class _$DirectionCopyWithImpl<$Res, $Val extends Direction>
    implements $DirectionCopyWith<$Res> {
  _$DirectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeMode = null,
    Object? bound = null,
    Object? resultCode = null,
    Object? length = null,
    Object? time = null,
    Object? sections = null,
    Object? groupInfoMap = null,
  }) {
    return _then(_value.copyWith(
      routeMode: null == routeMode
          ? _value.routeMode
          : routeMode // ignore: cast_nullable_to_non_nullable
              as String,
      bound: null == bound
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as Bound,
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
      groupInfoMap: null == groupInfoMap
          ? _value.groupInfoMap
          : groupInfoMap // ignore: cast_nullable_to_non_nullable
              as GroupInfoMap,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoundCopyWith<$Res> get bound {
    return $BoundCopyWith<$Res>(_value.bound, (value) {
      return _then(_value.copyWith(bound: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupInfoMapCopyWith<$Res> get groupInfoMap {
    return $GroupInfoMapCopyWith<$Res>(_value.groupInfoMap, (value) {
      return _then(_value.copyWith(groupInfoMap: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DirectionImplCopyWith<$Res>
    implements $DirectionCopyWith<$Res> {
  factory _$$DirectionImplCopyWith(
          _$DirectionImpl value, $Res Function(_$DirectionImpl) then) =
      __$$DirectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String routeMode,
      Bound bound,
      String resultCode,
      int length,
      int time,
      List<Section> sections,
      GroupInfoMap groupInfoMap});

  @override
  $BoundCopyWith<$Res> get bound;
  @override
  $GroupInfoMapCopyWith<$Res> get groupInfoMap;
}

/// @nodoc
class __$$DirectionImplCopyWithImpl<$Res>
    extends _$DirectionCopyWithImpl<$Res, _$DirectionImpl>
    implements _$$DirectionImplCopyWith<$Res> {
  __$$DirectionImplCopyWithImpl(
      _$DirectionImpl _value, $Res Function(_$DirectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeMode = null,
    Object? bound = null,
    Object? resultCode = null,
    Object? length = null,
    Object? time = null,
    Object? sections = null,
    Object? groupInfoMap = null,
  }) {
    return _then(_$DirectionImpl(
      routeMode: null == routeMode
          ? _value.routeMode
          : routeMode // ignore: cast_nullable_to_non_nullable
              as String,
      bound: null == bound
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as Bound,
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
      groupInfoMap: null == groupInfoMap
          ? _value.groupInfoMap
          : groupInfoMap // ignore: cast_nullable_to_non_nullable
              as GroupInfoMap,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DirectionImpl implements _Direction {
  const _$DirectionImpl(
      {required this.routeMode,
      required this.bound,
      required this.resultCode,
      required this.length,
      required this.time,
      required final List<Section> sections,
      required this.groupInfoMap})
      : _sections = sections;

  factory _$DirectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectionImplFromJson(json);

  @override
  final String routeMode;
  @override
  final Bound bound;
  @override
  final String resultCode;
  @override
  final int length;
  @override
  final int time;
  final List<Section> _sections;
  @override
  List<Section> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  final GroupInfoMap groupInfoMap;

  @override
  String toString() {
    return 'Direction(routeMode: $routeMode, bound: $bound, resultCode: $resultCode, length: $length, time: $time, sections: $sections, groupInfoMap: $groupInfoMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionImpl &&
            (identical(other.routeMode, routeMode) ||
                other.routeMode == routeMode) &&
            (identical(other.bound, bound) || other.bound == bound) &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.groupInfoMap, groupInfoMap) ||
                other.groupInfoMap == groupInfoMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      routeMode,
      bound,
      resultCode,
      length,
      time,
      const DeepCollectionEquality().hash(_sections),
      groupInfoMap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectionImplCopyWith<_$DirectionImpl> get copyWith =>
      __$$DirectionImplCopyWithImpl<_$DirectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectionImplToJson(
      this,
    );
  }
}

abstract class _Direction implements Direction {
  const factory _Direction(
      {required final String routeMode,
      required final Bound bound,
      required final String resultCode,
      required final int length,
      required final int time,
      required final List<Section> sections,
      required final GroupInfoMap groupInfoMap}) = _$DirectionImpl;

  factory _Direction.fromJson(Map<String, dynamic> json) =
      _$DirectionImpl.fromJson;

  @override
  String get routeMode;
  @override
  Bound get bound;
  @override
  String get resultCode;
  @override
  int get length;
  @override
  int get time;
  @override
  List<Section> get sections;
  @override
  GroupInfoMap get groupInfoMap;
  @override
  @JsonKey(ignore: true)
  _$$DirectionImplCopyWith<_$DirectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupInfoMap _$GroupInfoMapFromJson(Map<String, dynamic> json) {
  return _GroupInfoMap.fromJson(json);
}

/// @nodoc
mixin _$GroupInfoMap {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupInfoMapCopyWith<$Res> {
  factory $GroupInfoMapCopyWith(
          GroupInfoMap value, $Res Function(GroupInfoMap) then) =
      _$GroupInfoMapCopyWithImpl<$Res, GroupInfoMap>;
}

/// @nodoc
class _$GroupInfoMapCopyWithImpl<$Res, $Val extends GroupInfoMap>
    implements $GroupInfoMapCopyWith<$Res> {
  _$GroupInfoMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GroupInfoMapImplCopyWith<$Res> {
  factory _$$GroupInfoMapImplCopyWith(
          _$GroupInfoMapImpl value, $Res Function(_$GroupInfoMapImpl) then) =
      __$$GroupInfoMapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupInfoMapImplCopyWithImpl<$Res>
    extends _$GroupInfoMapCopyWithImpl<$Res, _$GroupInfoMapImpl>
    implements _$$GroupInfoMapImplCopyWith<$Res> {
  __$$GroupInfoMapImplCopyWithImpl(
      _$GroupInfoMapImpl _value, $Res Function(_$GroupInfoMapImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$GroupInfoMapImpl implements _GroupInfoMap {
  const _$GroupInfoMapImpl();

  factory _$GroupInfoMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupInfoMapImplFromJson(json);

  @override
  String toString() {
    return 'GroupInfoMap()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroupInfoMapImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupInfoMapImplToJson(
      this,
    );
  }
}

abstract class _GroupInfoMap implements GroupInfoMap {
  const factory _GroupInfoMap() = _$GroupInfoMapImpl;

  factory _GroupInfoMap.fromJson(Map<String, dynamic> json) =
      _$GroupInfoMapImpl.fromJson;
}

Section _$SectionFromJson(Map<String, dynamic> json) {
  return _Section.fromJson(json);
}

/// @nodoc
mixin _$Section {
  List<GuideList> get guideList => throw _privateConstructorUsedError;
  String get resultCode => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  String get calories => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  Facilities get facilities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res, Section>;
  @useResult
  $Res call(
      {List<GuideList> guideList,
      String resultCode,
      int length,
      String calories,
      int time,
      Facilities facilities});

  $FacilitiesCopyWith<$Res> get facilities;
}

/// @nodoc
class _$SectionCopyWithImpl<$Res, $Val extends Section>
    implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guideList = null,
    Object? resultCode = null,
    Object? length = null,
    Object? calories = null,
    Object? time = null,
    Object? facilities = null,
  }) {
    return _then(_value.copyWith(
      guideList: null == guideList
          ? _value.guideList
          : guideList // ignore: cast_nullable_to_non_nullable
              as List<GuideList>,
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      facilities: null == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as Facilities,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FacilitiesCopyWith<$Res> get facilities {
    return $FacilitiesCopyWith<$Res>(_value.facilities, (value) {
      return _then(_value.copyWith(facilities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionImplCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$$SectionImplCopyWith(
          _$SectionImpl value, $Res Function(_$SectionImpl) then) =
      __$$SectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GuideList> guideList,
      String resultCode,
      int length,
      String calories,
      int time,
      Facilities facilities});

  @override
  $FacilitiesCopyWith<$Res> get facilities;
}

/// @nodoc
class __$$SectionImplCopyWithImpl<$Res>
    extends _$SectionCopyWithImpl<$Res, _$SectionImpl>
    implements _$$SectionImplCopyWith<$Res> {
  __$$SectionImplCopyWithImpl(
      _$SectionImpl _value, $Res Function(_$SectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guideList = null,
    Object? resultCode = null,
    Object? length = null,
    Object? calories = null,
    Object? time = null,
    Object? facilities = null,
  }) {
    return _then(_$SectionImpl(
      guideList: null == guideList
          ? _value._guideList
          : guideList // ignore: cast_nullable_to_non_nullable
              as List<GuideList>,
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      facilities: null == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as Facilities,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionImpl implements _Section {
  const _$SectionImpl(
      {required final List<GuideList> guideList,
      required this.resultCode,
      required this.length,
      required this.calories,
      required this.time,
      required this.facilities})
      : _guideList = guideList;

  factory _$SectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionImplFromJson(json);

  final List<GuideList> _guideList;
  @override
  List<GuideList> get guideList {
    if (_guideList is EqualUnmodifiableListView) return _guideList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guideList);
  }

  @override
  final String resultCode;
  @override
  final int length;
  @override
  final String calories;
  @override
  final int time;
  @override
  final Facilities facilities;

  @override
  String toString() {
    return 'Section(guideList: $guideList, resultCode: $resultCode, length: $length, calories: $calories, time: $time, facilities: $facilities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionImpl &&
            const DeepCollectionEquality()
                .equals(other._guideList, _guideList) &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.facilities, facilities) ||
                other.facilities == facilities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_guideList),
      resultCode,
      length,
      calories,
      time,
      facilities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      __$$SectionImplCopyWithImpl<_$SectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionImplToJson(
      this,
    );
  }
}

abstract class _Section implements Section {
  const factory _Section(
      {required final List<GuideList> guideList,
      required final String resultCode,
      required final int length,
      required final String calories,
      required final int time,
      required final Facilities facilities}) = _$SectionImpl;

  factory _Section.fromJson(Map<String, dynamic> json) = _$SectionImpl.fromJson;

  @override
  List<GuideList> get guideList;
  @override
  String get resultCode;
  @override
  int get length;
  @override
  String get calories;
  @override
  int get time;
  @override
  Facilities get facilities;
  @override
  @JsonKey(ignore: true)
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Facilities _$FacilitiesFromJson(Map<String, dynamic> json) {
  return _Facilities.fromJson(json);
}

/// @nodoc
mixin _$Facilities {
  int get stair => throw _privateConstructorUsedError;
  int get underground => throw _privateConstructorUsedError;
  int get bridge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilitiesCopyWith<Facilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilitiesCopyWith<$Res> {
  factory $FacilitiesCopyWith(
          Facilities value, $Res Function(Facilities) then) =
      _$FacilitiesCopyWithImpl<$Res, Facilities>;
  @useResult
  $Res call({int stair, int underground, int bridge});
}

/// @nodoc
class _$FacilitiesCopyWithImpl<$Res, $Val extends Facilities>
    implements $FacilitiesCopyWith<$Res> {
  _$FacilitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stair = null,
    Object? underground = null,
    Object? bridge = null,
  }) {
    return _then(_value.copyWith(
      stair: null == stair
          ? _value.stair
          : stair // ignore: cast_nullable_to_non_nullable
              as int,
      underground: null == underground
          ? _value.underground
          : underground // ignore: cast_nullable_to_non_nullable
              as int,
      bridge: null == bridge
          ? _value.bridge
          : bridge // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilitiesImplCopyWith<$Res>
    implements $FacilitiesCopyWith<$Res> {
  factory _$$FacilitiesImplCopyWith(
          _$FacilitiesImpl value, $Res Function(_$FacilitiesImpl) then) =
      __$$FacilitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int stair, int underground, int bridge});
}

/// @nodoc
class __$$FacilitiesImplCopyWithImpl<$Res>
    extends _$FacilitiesCopyWithImpl<$Res, _$FacilitiesImpl>
    implements _$$FacilitiesImplCopyWith<$Res> {
  __$$FacilitiesImplCopyWithImpl(
      _$FacilitiesImpl _value, $Res Function(_$FacilitiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stair = null,
    Object? underground = null,
    Object? bridge = null,
  }) {
    return _then(_$FacilitiesImpl(
      stair: null == stair
          ? _value.stair
          : stair // ignore: cast_nullable_to_non_nullable
              as int,
      underground: null == underground
          ? _value.underground
          : underground // ignore: cast_nullable_to_non_nullable
              as int,
      bridge: null == bridge
          ? _value.bridge
          : bridge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilitiesImpl implements _Facilities {
  const _$FacilitiesImpl(
      {required this.stair, required this.underground, required this.bridge});

  factory _$FacilitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilitiesImplFromJson(json);

  @override
  final int stair;
  @override
  final int underground;
  @override
  final int bridge;

  @override
  String toString() {
    return 'Facilities(stair: $stair, underground: $underground, bridge: $bridge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilitiesImpl &&
            (identical(other.stair, stair) || other.stair == stair) &&
            (identical(other.underground, underground) ||
                other.underground == underground) &&
            (identical(other.bridge, bridge) || other.bridge == bridge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stair, underground, bridge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilitiesImplCopyWith<_$FacilitiesImpl> get copyWith =>
      __$$FacilitiesImplCopyWithImpl<_$FacilitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilitiesImplToJson(
      this,
    );
  }
}

abstract class _Facilities implements Facilities {
  const factory _Facilities(
      {required final int stair,
      required final int underground,
      required final int bridge}) = _$FacilitiesImpl;

  factory _Facilities.fromJson(Map<String, dynamic> json) =
      _$FacilitiesImpl.fromJson;

  @override
  int get stair;
  @override
  int get underground;
  @override
  int get bridge;
  @override
  @JsonKey(ignore: true)
  _$$FacilitiesImplCopyWith<_$FacilitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuideList _$GuideListFromJson(Map<String, dynamic> json) {
  return _GuideList.fromJson(json);
}

/// @nodoc
mixin _$GuideList {
  RotationCode get rotationCode => throw _privateConstructorUsedError;
  String get guideMent => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  Link? get link => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  GuideCode get guideCode => throw _privateConstructorUsedError;
  int get seq => throw _privateConstructorUsedError;
  RoadView? get roadView => throw _privateConstructorUsedError;
  Poi? get poi => throw _privateConstructorUsedError;
  String? get crossName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuideListCopyWith<GuideList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideListCopyWith<$Res> {
  factory $GuideListCopyWith(GuideList value, $Res Function(GuideList) then) =
      _$GuideListCopyWithImpl<$Res, GuideList>;
  @useResult
  $Res call(
      {RotationCode rotationCode,
      String guideMent,
      String groupId,
      int x,
      Link? link,
      int y,
      GuideCode guideCode,
      int seq,
      RoadView? roadView,
      Poi? poi,
      String? crossName});

  $LinkCopyWith<$Res>? get link;
  $RoadViewCopyWith<$Res>? get roadView;
  $PoiCopyWith<$Res>? get poi;
}

/// @nodoc
class _$GuideListCopyWithImpl<$Res, $Val extends GuideList>
    implements $GuideListCopyWith<$Res> {
  _$GuideListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rotationCode = null,
    Object? guideMent = null,
    Object? groupId = null,
    Object? x = null,
    Object? link = freezed,
    Object? y = null,
    Object? guideCode = null,
    Object? seq = null,
    Object? roadView = freezed,
    Object? poi = freezed,
    Object? crossName = freezed,
  }) {
    return _then(_value.copyWith(
      rotationCode: null == rotationCode
          ? _value.rotationCode
          : rotationCode // ignore: cast_nullable_to_non_nullable
              as RotationCode,
      guideMent: null == guideMent
          ? _value.guideMent
          : guideMent // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Link?,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      guideCode: null == guideCode
          ? _value.guideCode
          : guideCode // ignore: cast_nullable_to_non_nullable
              as GuideCode,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      roadView: freezed == roadView
          ? _value.roadView
          : roadView // ignore: cast_nullable_to_non_nullable
              as RoadView?,
      poi: freezed == poi
          ? _value.poi
          : poi // ignore: cast_nullable_to_non_nullable
              as Poi?,
      crossName: freezed == crossName
          ? _value.crossName
          : crossName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinkCopyWith<$Res>? get link {
    if (_value.link == null) {
      return null;
    }

    return $LinkCopyWith<$Res>(_value.link!, (value) {
      return _then(_value.copyWith(link: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoadViewCopyWith<$Res>? get roadView {
    if (_value.roadView == null) {
      return null;
    }

    return $RoadViewCopyWith<$Res>(_value.roadView!, (value) {
      return _then(_value.copyWith(roadView: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PoiCopyWith<$Res>? get poi {
    if (_value.poi == null) {
      return null;
    }

    return $PoiCopyWith<$Res>(_value.poi!, (value) {
      return _then(_value.copyWith(poi: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuideListImplCopyWith<$Res>
    implements $GuideListCopyWith<$Res> {
  factory _$$GuideListImplCopyWith(
          _$GuideListImpl value, $Res Function(_$GuideListImpl) then) =
      __$$GuideListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RotationCode rotationCode,
      String guideMent,
      String groupId,
      int x,
      Link? link,
      int y,
      GuideCode guideCode,
      int seq,
      RoadView? roadView,
      Poi? poi,
      String? crossName});

  @override
  $LinkCopyWith<$Res>? get link;
  @override
  $RoadViewCopyWith<$Res>? get roadView;
  @override
  $PoiCopyWith<$Res>? get poi;
}

/// @nodoc
class __$$GuideListImplCopyWithImpl<$Res>
    extends _$GuideListCopyWithImpl<$Res, _$GuideListImpl>
    implements _$$GuideListImplCopyWith<$Res> {
  __$$GuideListImplCopyWithImpl(
      _$GuideListImpl _value, $Res Function(_$GuideListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rotationCode = null,
    Object? guideMent = null,
    Object? groupId = null,
    Object? x = null,
    Object? link = freezed,
    Object? y = null,
    Object? guideCode = null,
    Object? seq = null,
    Object? roadView = freezed,
    Object? poi = freezed,
    Object? crossName = freezed,
  }) {
    return _then(_$GuideListImpl(
      rotationCode: null == rotationCode
          ? _value.rotationCode
          : rotationCode // ignore: cast_nullable_to_non_nullable
              as RotationCode,
      guideMent: null == guideMent
          ? _value.guideMent
          : guideMent // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Link?,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      guideCode: null == guideCode
          ? _value.guideCode
          : guideCode // ignore: cast_nullable_to_non_nullable
              as GuideCode,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      roadView: freezed == roadView
          ? _value.roadView
          : roadView // ignore: cast_nullable_to_non_nullable
              as RoadView?,
      poi: freezed == poi
          ? _value.poi
          : poi // ignore: cast_nullable_to_non_nullable
              as Poi?,
      crossName: freezed == crossName
          ? _value.crossName
          : crossName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuideListImpl implements _GuideList {
  const _$GuideListImpl(
      {required this.rotationCode,
      required this.guideMent,
      required this.groupId,
      required this.x,
      this.link,
      required this.y,
      required this.guideCode,
      required this.seq,
      this.roadView,
      this.poi,
      this.crossName});

  factory _$GuideListImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuideListImplFromJson(json);

  @override
  final RotationCode rotationCode;
  @override
  final String guideMent;
  @override
  final String groupId;
  @override
  final int x;
  @override
  final Link? link;
  @override
  final int y;
  @override
  final GuideCode guideCode;
  @override
  final int seq;
  @override
  final RoadView? roadView;
  @override
  final Poi? poi;
  @override
  final String? crossName;

  @override
  String toString() {
    return 'GuideList(rotationCode: $rotationCode, guideMent: $guideMent, groupId: $groupId, x: $x, link: $link, y: $y, guideCode: $guideCode, seq: $seq, roadView: $roadView, poi: $poi, crossName: $crossName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuideListImpl &&
            (identical(other.rotationCode, rotationCode) ||
                other.rotationCode == rotationCode) &&
            (identical(other.guideMent, guideMent) ||
                other.guideMent == guideMent) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.guideCode, guideCode) ||
                other.guideCode == guideCode) &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.roadView, roadView) ||
                other.roadView == roadView) &&
            (identical(other.poi, poi) || other.poi == poi) &&
            (identical(other.crossName, crossName) ||
                other.crossName == crossName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rotationCode, guideMent, groupId,
      x, link, y, guideCode, seq, roadView, poi, crossName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuideListImplCopyWith<_$GuideListImpl> get copyWith =>
      __$$GuideListImplCopyWithImpl<_$GuideListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuideListImplToJson(
      this,
    );
  }
}

abstract class _GuideList implements GuideList {
  const factory _GuideList(
      {required final RotationCode rotationCode,
      required final String guideMent,
      required final String groupId,
      required final int x,
      final Link? link,
      required final int y,
      required final GuideCode guideCode,
      required final int seq,
      final RoadView? roadView,
      final Poi? poi,
      final String? crossName}) = _$GuideListImpl;

  factory _GuideList.fromJson(Map<String, dynamic> json) =
      _$GuideListImpl.fromJson;

  @override
  RotationCode get rotationCode;
  @override
  String get guideMent;
  @override
  String get groupId;
  @override
  int get x;
  @override
  Link? get link;
  @override
  int get y;
  @override
  GuideCode get guideCode;
  @override
  int get seq;
  @override
  RoadView? get roadView;
  @override
  Poi? get poi;
  @override
  String? get crossName;
  @override
  @JsonKey(ignore: true)
  _$$GuideListImplCopyWith<_$GuideListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  bool get existCenterLine => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  String get points => throw _privateConstructorUsedError;
  String? get roadName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call(
      {bool existCenterLine,
      int length,
      int time,
      String points,
      String? roadName});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? existCenterLine = null,
    Object? length = null,
    Object? time = null,
    Object? points = null,
    Object? roadName = freezed,
  }) {
    return _then(_value.copyWith(
      existCenterLine: null == existCenterLine
          ? _value.existCenterLine
          : existCenterLine // ignore: cast_nullable_to_non_nullable
              as bool,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String,
      roadName: freezed == roadName
          ? _value.roadName
          : roadName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool existCenterLine,
      int length,
      int time,
      String points,
      String? roadName});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? existCenterLine = null,
    Object? length = null,
    Object? time = null,
    Object? points = null,
    Object? roadName = freezed,
  }) {
    return _then(_$LinkImpl(
      existCenterLine: null == existCenterLine
          ? _value.existCenterLine
          : existCenterLine // ignore: cast_nullable_to_non_nullable
              as bool,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String,
      roadName: freezed == roadName
          ? _value.roadName
          : roadName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl implements _Link {
  const _$LinkImpl(
      {required this.existCenterLine,
      required this.length,
      required this.time,
      required this.points,
      this.roadName});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  final bool existCenterLine;
  @override
  final int length;
  @override
  final int time;
  @override
  final String points;
  @override
  final String? roadName;

  @override
  String toString() {
    return 'Link(existCenterLine: $existCenterLine, length: $length, time: $time, points: $points, roadName: $roadName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.existCenterLine, existCenterLine) ||
                other.existCenterLine == existCenterLine) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.roadName, roadName) ||
                other.roadName == roadName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, existCenterLine, length, time, points, roadName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {required final bool existCenterLine,
      required final int length,
      required final int time,
      required final String points,
      final String? roadName}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  bool get existCenterLine;
  @override
  int get length;
  @override
  int get time;
  @override
  String get points;
  @override
  String? get roadName;
  @override
  @JsonKey(ignore: true)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Poi _$PoiFromJson(Map<String, dynamic> json) {
  return _Poi.fromJson(json);
}

/// @nodoc
mixin _$Poi {
  double get x => throw _privateConstructorUsedError;
  String get confirmId => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  String get placeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PoiCopyWith<Poi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoiCopyWith<$Res> {
  factory $PoiCopyWith(Poi value, $Res Function(Poi) then) =
      _$PoiCopyWithImpl<$Res, Poi>;
  @useResult
  $Res call({double x, String confirmId, double y, String placeName});
}

/// @nodoc
class _$PoiCopyWithImpl<$Res, $Val extends Poi> implements $PoiCopyWith<$Res> {
  _$PoiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? confirmId = null,
    Object? y = null,
    Object? placeName = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      confirmId: null == confirmId
          ? _value.confirmId
          : confirmId // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PoiImplCopyWith<$Res> implements $PoiCopyWith<$Res> {
  factory _$$PoiImplCopyWith(_$PoiImpl value, $Res Function(_$PoiImpl) then) =
      __$$PoiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, String confirmId, double y, String placeName});
}

/// @nodoc
class __$$PoiImplCopyWithImpl<$Res> extends _$PoiCopyWithImpl<$Res, _$PoiImpl>
    implements _$$PoiImplCopyWith<$Res> {
  __$$PoiImplCopyWithImpl(_$PoiImpl _value, $Res Function(_$PoiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? confirmId = null,
    Object? y = null,
    Object? placeName = null,
  }) {
    return _then(_$PoiImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      confirmId: null == confirmId
          ? _value.confirmId
          : confirmId // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PoiImpl implements _Poi {
  const _$PoiImpl(
      {required this.x,
      required this.confirmId,
      required this.y,
      required this.placeName});

  factory _$PoiImpl.fromJson(Map<String, dynamic> json) =>
      _$$PoiImplFromJson(json);

  @override
  final double x;
  @override
  final String confirmId;
  @override
  final double y;
  @override
  final String placeName;

  @override
  String toString() {
    return 'Poi(x: $x, confirmId: $confirmId, y: $y, placeName: $placeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoiImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.confirmId, confirmId) ||
                other.confirmId == confirmId) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, confirmId, y, placeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoiImplCopyWith<_$PoiImpl> get copyWith =>
      __$$PoiImplCopyWithImpl<_$PoiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PoiImplToJson(
      this,
    );
  }
}

abstract class _Poi implements Poi {
  const factory _Poi(
      {required final double x,
      required final String confirmId,
      required final double y,
      required final String placeName}) = _$PoiImpl;

  factory _Poi.fromJson(Map<String, dynamic> json) = _$PoiImpl.fromJson;

  @override
  double get x;
  @override
  String get confirmId;
  @override
  double get y;
  @override
  String get placeName;
  @override
  @JsonKey(ignore: true)
  _$$PoiImplCopyWith<_$PoiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoadView _$RoadViewFromJson(Map<String, dynamic> json) {
  return _RoadView.fromJson(json);
}

/// @nodoc
mixin _$RoadView {
  String get filename => throw _privateConstructorUsedError;
  int get panoid => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  int get pan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoadViewCopyWith<RoadView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoadViewCopyWith<$Res> {
  factory $RoadViewCopyWith(RoadView value, $Res Function(RoadView) then) =
      _$RoadViewCopyWithImpl<$Res, RoadView>;
  @useResult
  $Res call({String filename, int panoid, int x, int y, int pan});
}

/// @nodoc
class _$RoadViewCopyWithImpl<$Res, $Val extends RoadView>
    implements $RoadViewCopyWith<$Res> {
  _$RoadViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? panoid = null,
    Object? x = null,
    Object? y = null,
    Object? pan = null,
  }) {
    return _then(_value.copyWith(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      panoid: null == panoid
          ? _value.panoid
          : panoid // ignore: cast_nullable_to_non_nullable
              as int,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      pan: null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoadViewImplCopyWith<$Res>
    implements $RoadViewCopyWith<$Res> {
  factory _$$RoadViewImplCopyWith(
          _$RoadViewImpl value, $Res Function(_$RoadViewImpl) then) =
      __$$RoadViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filename, int panoid, int x, int y, int pan});
}

/// @nodoc
class __$$RoadViewImplCopyWithImpl<$Res>
    extends _$RoadViewCopyWithImpl<$Res, _$RoadViewImpl>
    implements _$$RoadViewImplCopyWith<$Res> {
  __$$RoadViewImplCopyWithImpl(
      _$RoadViewImpl _value, $Res Function(_$RoadViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? panoid = null,
    Object? x = null,
    Object? y = null,
    Object? pan = null,
  }) {
    return _then(_$RoadViewImpl(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      panoid: null == panoid
          ? _value.panoid
          : panoid // ignore: cast_nullable_to_non_nullable
              as int,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      pan: null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoadViewImpl implements _RoadView {
  const _$RoadViewImpl(
      {required this.filename,
      required this.panoid,
      required this.x,
      required this.y,
      required this.pan});

  factory _$RoadViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoadViewImplFromJson(json);

  @override
  final String filename;
  @override
  final int panoid;
  @override
  final int x;
  @override
  final int y;
  @override
  final int pan;

  @override
  String toString() {
    return 'RoadView(filename: $filename, panoid: $panoid, x: $x, y: $y, pan: $pan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoadViewImpl &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.panoid, panoid) || other.panoid == panoid) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.pan, pan) || other.pan == pan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filename, panoid, x, y, pan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoadViewImplCopyWith<_$RoadViewImpl> get copyWith =>
      __$$RoadViewImplCopyWithImpl<_$RoadViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoadViewImplToJson(
      this,
    );
  }
}

abstract class _RoadView implements RoadView {
  const factory _RoadView(
      {required final String filename,
      required final int panoid,
      required final int x,
      required final int y,
      required final int pan}) = _$RoadViewImpl;

  factory _RoadView.fromJson(Map<String, dynamic> json) =
      _$RoadViewImpl.fromJson;

  @override
  String get filename;
  @override
  int get panoid;
  @override
  int get x;
  @override
  int get y;
  @override
  int get pan;
  @override
  @JsonKey(ignore: true)
  _$$RoadViewImplCopyWith<_$RoadViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
