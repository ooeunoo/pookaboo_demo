// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_toilet_images_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadToiletImagesParams _$UploadToiletImagesParamsFromJson(
    Map<String, dynamic> json) {
  return _UploadToiletImagesParams.fromJson(json);
}

/// @nodoc
mixin _$UploadToiletImagesParams {
  List<ImageFormData> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadToiletImagesParamsCopyWith<UploadToiletImagesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadToiletImagesParamsCopyWith<$Res> {
  factory $UploadToiletImagesParamsCopyWith(UploadToiletImagesParams value,
          $Res Function(UploadToiletImagesParams) then) =
      _$UploadToiletImagesParamsCopyWithImpl<$Res, UploadToiletImagesParams>;
  @useResult
  $Res call({List<ImageFormData> images});
}

/// @nodoc
class _$UploadToiletImagesParamsCopyWithImpl<$Res,
        $Val extends UploadToiletImagesParams>
    implements $UploadToiletImagesParamsCopyWith<$Res> {
  _$UploadToiletImagesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageFormData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadToiletImagesParamsImplCopyWith<$Res>
    implements $UploadToiletImagesParamsCopyWith<$Res> {
  factory _$$UploadToiletImagesParamsImplCopyWith(
          _$UploadToiletImagesParamsImpl value,
          $Res Function(_$UploadToiletImagesParamsImpl) then) =
      __$$UploadToiletImagesParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageFormData> images});
}

/// @nodoc
class __$$UploadToiletImagesParamsImplCopyWithImpl<$Res>
    extends _$UploadToiletImagesParamsCopyWithImpl<$Res,
        _$UploadToiletImagesParamsImpl>
    implements _$$UploadToiletImagesParamsImplCopyWith<$Res> {
  __$$UploadToiletImagesParamsImplCopyWithImpl(
      _$UploadToiletImagesParamsImpl _value,
      $Res Function(_$UploadToiletImagesParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$UploadToiletImagesParamsImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageFormData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadToiletImagesParamsImpl implements _UploadToiletImagesParams {
  _$UploadToiletImagesParamsImpl({required final List<ImageFormData> images})
      : _images = images;

  factory _$UploadToiletImagesParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadToiletImagesParamsImplFromJson(json);

  final List<ImageFormData> _images;
  @override
  List<ImageFormData> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'UploadToiletImagesParams(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadToiletImagesParamsImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadToiletImagesParamsImplCopyWith<_$UploadToiletImagesParamsImpl>
      get copyWith => __$$UploadToiletImagesParamsImplCopyWithImpl<
          _$UploadToiletImagesParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadToiletImagesParamsImplToJson(
      this,
    );
  }
}

abstract class _UploadToiletImagesParams implements UploadToiletImagesParams {
  factory _UploadToiletImagesParams(
          {required final List<ImageFormData> images}) =
      _$UploadToiletImagesParamsImpl;

  factory _UploadToiletImagesParams.fromJson(Map<String, dynamic> json) =
      _$UploadToiletImagesParamsImpl.fromJson;

  @override
  List<ImageFormData> get images;
  @override
  @JsonKey(ignore: true)
  _$$UploadToiletImagesParamsImplCopyWith<_$UploadToiletImagesParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImageFormData _$ImageFormDataFromJson(Map<String, dynamic> json) {
  return _ImageFormData.fromJson(json);
}

/// @nodoc
mixin _$ImageFormData {
  String get filePath => throw _privateConstructorUsedError;
  String get storagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageFormDataCopyWith<ImageFormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageFormDataCopyWith<$Res> {
  factory $ImageFormDataCopyWith(
          ImageFormData value, $Res Function(ImageFormData) then) =
      _$ImageFormDataCopyWithImpl<$Res, ImageFormData>;
  @useResult
  $Res call({String filePath, String storagePath});
}

/// @nodoc
class _$ImageFormDataCopyWithImpl<$Res, $Val extends ImageFormData>
    implements $ImageFormDataCopyWith<$Res> {
  _$ImageFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? storagePath = null,
  }) {
    return _then(_value.copyWith(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      storagePath: null == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageFormDataImplCopyWith<$Res>
    implements $ImageFormDataCopyWith<$Res> {
  factory _$$ImageFormDataImplCopyWith(
          _$ImageFormDataImpl value, $Res Function(_$ImageFormDataImpl) then) =
      __$$ImageFormDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filePath, String storagePath});
}

/// @nodoc
class __$$ImageFormDataImplCopyWithImpl<$Res>
    extends _$ImageFormDataCopyWithImpl<$Res, _$ImageFormDataImpl>
    implements _$$ImageFormDataImplCopyWith<$Res> {
  __$$ImageFormDataImplCopyWithImpl(
      _$ImageFormDataImpl _value, $Res Function(_$ImageFormDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? storagePath = null,
  }) {
    return _then(_$ImageFormDataImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      storagePath: null == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageFormDataImpl implements _ImageFormData {
  _$ImageFormDataImpl({required this.filePath, required this.storagePath});

  factory _$ImageFormDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageFormDataImplFromJson(json);

  @override
  final String filePath;
  @override
  final String storagePath;

  @override
  String toString() {
    return 'ImageFormData(filePath: $filePath, storagePath: $storagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageFormDataImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.storagePath, storagePath) ||
                other.storagePath == storagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filePath, storagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageFormDataImplCopyWith<_$ImageFormDataImpl> get copyWith =>
      __$$ImageFormDataImplCopyWithImpl<_$ImageFormDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageFormDataImplToJson(
      this,
    );
  }
}

abstract class _ImageFormData implements ImageFormData {
  factory _ImageFormData(
      {required final String filePath,
      required final String storagePath}) = _$ImageFormDataImpl;

  factory _ImageFormData.fromJson(Map<String, dynamic> json) =
      _$ImageFormDataImpl.fromJson;

  @override
  String get filePath;
  @override
  String get storagePath;
  @override
  @JsonKey(ignore: true)
  _$$ImageFormDataImplCopyWith<_$ImageFormDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
