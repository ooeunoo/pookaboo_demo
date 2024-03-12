// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coord.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConvertCoordParams _$ConvertCoordParamsFromJson(Map<String, dynamic> json) {
  return _ConvertCoordParams.fromJson(json);
}

/// @nodoc
mixin _$ConvertCoordParams {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  String get inputCoord => throw _privateConstructorUsedError;
  String get outputCoord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConvertCoordParamsCopyWith<ConvertCoordParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertCoordParamsCopyWith<$Res> {
  factory $ConvertCoordParamsCopyWith(
          ConvertCoordParams value, $Res Function(ConvertCoordParams) then) =
      _$ConvertCoordParamsCopyWithImpl<$Res, ConvertCoordParams>;
  @useResult
  $Res call({double x, double y, String inputCoord, String outputCoord});
}

/// @nodoc
class _$ConvertCoordParamsCopyWithImpl<$Res, $Val extends ConvertCoordParams>
    implements $ConvertCoordParamsCopyWith<$Res> {
  _$ConvertCoordParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? inputCoord = null,
    Object? outputCoord = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      inputCoord: null == inputCoord
          ? _value.inputCoord
          : inputCoord // ignore: cast_nullable_to_non_nullable
              as String,
      outputCoord: null == outputCoord
          ? _value.outputCoord
          : outputCoord // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConvertCoordParamsImplCopyWith<$Res>
    implements $ConvertCoordParamsCopyWith<$Res> {
  factory _$$ConvertCoordParamsImplCopyWith(_$ConvertCoordParamsImpl value,
          $Res Function(_$ConvertCoordParamsImpl) then) =
      __$$ConvertCoordParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y, String inputCoord, String outputCoord});
}

/// @nodoc
class __$$ConvertCoordParamsImplCopyWithImpl<$Res>
    extends _$ConvertCoordParamsCopyWithImpl<$Res, _$ConvertCoordParamsImpl>
    implements _$$ConvertCoordParamsImplCopyWith<$Res> {
  __$$ConvertCoordParamsImplCopyWithImpl(_$ConvertCoordParamsImpl _value,
      $Res Function(_$ConvertCoordParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? inputCoord = null,
    Object? outputCoord = null,
  }) {
    return _then(_$ConvertCoordParamsImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      inputCoord: null == inputCoord
          ? _value.inputCoord
          : inputCoord // ignore: cast_nullable_to_non_nullable
              as String,
      outputCoord: null == outputCoord
          ? _value.outputCoord
          : outputCoord // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConvertCoordParamsImpl implements _ConvertCoordParams {
  const _$ConvertCoordParamsImpl(
      {required this.x,
      required this.y,
      required this.inputCoord,
      required this.outputCoord});

  factory _$ConvertCoordParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConvertCoordParamsImplFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  final String inputCoord;
  @override
  final String outputCoord;

  @override
  String toString() {
    return 'ConvertCoordParams(x: $x, y: $y, inputCoord: $inputCoord, outputCoord: $outputCoord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertCoordParamsImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.inputCoord, inputCoord) ||
                other.inputCoord == inputCoord) &&
            (identical(other.outputCoord, outputCoord) ||
                other.outputCoord == outputCoord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, inputCoord, outputCoord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertCoordParamsImplCopyWith<_$ConvertCoordParamsImpl> get copyWith =>
      __$$ConvertCoordParamsImplCopyWithImpl<_$ConvertCoordParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConvertCoordParamsImplToJson(
      this,
    );
  }
}

abstract class _ConvertCoordParams implements ConvertCoordParams {
  const factory _ConvertCoordParams(
      {required final double x,
      required final double y,
      required final String inputCoord,
      required final String outputCoord}) = _$ConvertCoordParamsImpl;

  factory _ConvertCoordParams.fromJson(Map<String, dynamic> json) =
      _$ConvertCoordParamsImpl.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  String get inputCoord;
  @override
  String get outputCoord;
  @override
  @JsonKey(ignore: true)
  _$$ConvertCoordParamsImplCopyWith<_$ConvertCoordParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConvertCoordResponse _$ConvertCoordResponseFromJson(Map<String, dynamic> json) {
  return _ConvertCoordResponse.fromJson(json);
}

/// @nodoc
mixin _$ConvertCoordResponse {
  Meta get meta => throw _privateConstructorUsedError;
  List<Document> get documents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConvertCoordResponseCopyWith<ConvertCoordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertCoordResponseCopyWith<$Res> {
  factory $ConvertCoordResponseCopyWith(ConvertCoordResponse value,
          $Res Function(ConvertCoordResponse) then) =
      _$ConvertCoordResponseCopyWithImpl<$Res, ConvertCoordResponse>;
  @useResult
  $Res call({Meta meta, List<Document> documents});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ConvertCoordResponseCopyWithImpl<$Res,
        $Val extends ConvertCoordResponse>
    implements $ConvertCoordResponseCopyWith<$Res> {
  _$ConvertCoordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? documents = null,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConvertCoordResponseImplCopyWith<$Res>
    implements $ConvertCoordResponseCopyWith<$Res> {
  factory _$$ConvertCoordResponseImplCopyWith(_$ConvertCoordResponseImpl value,
          $Res Function(_$ConvertCoordResponseImpl) then) =
      __$$ConvertCoordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meta meta, List<Document> documents});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$ConvertCoordResponseImplCopyWithImpl<$Res>
    extends _$ConvertCoordResponseCopyWithImpl<$Res, _$ConvertCoordResponseImpl>
    implements _$$ConvertCoordResponseImplCopyWith<$Res> {
  __$$ConvertCoordResponseImplCopyWithImpl(_$ConvertCoordResponseImpl _value,
      $Res Function(_$ConvertCoordResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? documents = null,
  }) {
    return _then(_$ConvertCoordResponseImpl(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConvertCoordResponseImpl implements _ConvertCoordResponse {
  const _$ConvertCoordResponseImpl(
      {required this.meta, required final List<Document> documents})
      : _documents = documents;

  factory _$ConvertCoordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConvertCoordResponseImplFromJson(json);

  @override
  final Meta meta;
  final List<Document> _documents;
  @override
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'ConvertCoordResponse(meta: $meta, documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertCoordResponseImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, meta, const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertCoordResponseImplCopyWith<_$ConvertCoordResponseImpl>
      get copyWith =>
          __$$ConvertCoordResponseImplCopyWithImpl<_$ConvertCoordResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConvertCoordResponseImplToJson(
      this,
    );
  }
}

abstract class _ConvertCoordResponse implements ConvertCoordResponse {
  const factory _ConvertCoordResponse(
      {required final Meta meta,
      required final List<Document> documents}) = _$ConvertCoordResponseImpl;

  factory _ConvertCoordResponse.fromJson(Map<String, dynamic> json) =
      _$ConvertCoordResponseImpl.fromJson;

  @override
  Meta get meta;
  @override
  List<Document> get documents;
  @override
  @JsonKey(ignore: true)
  _$$ConvertCoordResponseImplCopyWith<_$ConvertCoordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return _Document.fromJson(json);
}

/// @nodoc
mixin _$Document {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentCopyWith<Document> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) =
      _$DocumentCopyWithImpl<$Res, Document>;
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res, $Val extends Document>
    implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentImplCopyWith<$Res>
    implements $DocumentCopyWith<$Res> {
  factory _$$DocumentImplCopyWith(
          _$DocumentImpl value, $Res Function(_$DocumentImpl) then) =
      __$$DocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class __$$DocumentImplCopyWithImpl<$Res>
    extends _$DocumentCopyWithImpl<$Res, _$DocumentImpl>
    implements _$$DocumentImplCopyWith<$Res> {
  __$$DocumentImplCopyWithImpl(
      _$DocumentImpl _value, $Res Function(_$DocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$DocumentImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentImpl implements _Document {
  const _$DocumentImpl({required this.x, required this.y});

  factory _$DocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentImplFromJson(json);

  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'Document(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      __$$DocumentImplCopyWithImpl<_$DocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentImplToJson(
      this,
    );
  }
}

abstract class _Document implements Document {
  const factory _Document({required final double x, required final double y}) =
      _$DocumentImpl;

  factory _Document.fromJson(Map<String, dynamic> json) =
      _$DocumentImpl.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call({int totalCount});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
  }) {
    return _then(_$MetaImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl({required this.totalCount});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  final int totalCount;

  @override
  String toString() {
    return 'Meta(totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta({required final int totalCount}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
