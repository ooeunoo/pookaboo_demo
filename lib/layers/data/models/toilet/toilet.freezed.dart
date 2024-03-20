// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toilet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Toilet _$ToiletFromJson(Map<String, dynamic> json) {
  return _Toilet.fromJson(json);
}

/// @nodoc
mixin _$Toilet {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  bool get gender => throw _privateConstructorUsedError;
  bool get password => throw _privateConstructorUsedError;
  String get password_tip => throw _privateConstructorUsedError;
  int? get total_reviews => throw _privateConstructorUsedError;
  String get location_type => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get road_address => throw _privateConstructorUsedError;
  String get location_tip => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  Convenience? get convenience => throw _privateConstructorUsedError;
  Equipment? get equipment => throw _privateConstructorUsedError;
  Rating? get rating => throw _privateConstructorUsedError;
  Time? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToiletCopyWith<Toilet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToiletCopyWith<$Res> {
  factory $ToiletCopyWith(Toilet value, $Res Function(Toilet) then) =
      _$ToiletCopyWithImpl<$Res, Toilet>;
  @useResult
  $Res call(
      {int id,
      String name,
      int type,
      bool visible,
      bool gender,
      bool password,
      String password_tip,
      int? total_reviews,
      String location_type,
      String address,
      String road_address,
      String location_tip,
      String city,
      double? lat,
      double? lng,
      Convenience? convenience,
      Equipment? equipment,
      Rating? rating,
      Time? time});

  $ConvenienceCopyWith<$Res>? get convenience;
  $EquipmentCopyWith<$Res>? get equipment;
  $RatingCopyWith<$Res>? get rating;
  $TimeCopyWith<$Res>? get time;
}

/// @nodoc
class _$ToiletCopyWithImpl<$Res, $Val extends Toilet>
    implements $ToiletCopyWith<$Res> {
  _$ToiletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? visible = null,
    Object? gender = null,
    Object? password = null,
    Object? password_tip = null,
    Object? total_reviews = freezed,
    Object? location_type = null,
    Object? address = null,
    Object? road_address = null,
    Object? location_tip = null,
    Object? city = null,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? convenience = freezed,
    Object? equipment = freezed,
    Object? rating = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as bool,
      password_tip: null == password_tip
          ? _value.password_tip
          : password_tip // ignore: cast_nullable_to_non_nullable
              as String,
      total_reviews: freezed == total_reviews
          ? _value.total_reviews
          : total_reviews // ignore: cast_nullable_to_non_nullable
              as int?,
      location_type: null == location_type
          ? _value.location_type
          : location_type // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      road_address: null == road_address
          ? _value.road_address
          : road_address // ignore: cast_nullable_to_non_nullable
              as String,
      location_tip: null == location_tip
          ? _value.location_tip
          : location_tip // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      convenience: freezed == convenience
          ? _value.convenience
          : convenience // ignore: cast_nullable_to_non_nullable
              as Convenience?,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as Equipment?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConvenienceCopyWith<$Res>? get convenience {
    if (_value.convenience == null) {
      return null;
    }

    return $ConvenienceCopyWith<$Res>(_value.convenience!, (value) {
      return _then(_value.copyWith(convenience: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EquipmentCopyWith<$Res>? get equipment {
    if (_value.equipment == null) {
      return null;
    }

    return $EquipmentCopyWith<$Res>(_value.equipment!, (value) {
      return _then(_value.copyWith(equipment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get time {
    if (_value.time == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.time!, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ToiletImplCopyWith<$Res> implements $ToiletCopyWith<$Res> {
  factory _$$ToiletImplCopyWith(
          _$ToiletImpl value, $Res Function(_$ToiletImpl) then) =
      __$$ToiletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int type,
      bool visible,
      bool gender,
      bool password,
      String password_tip,
      int? total_reviews,
      String location_type,
      String address,
      String road_address,
      String location_tip,
      String city,
      double? lat,
      double? lng,
      Convenience? convenience,
      Equipment? equipment,
      Rating? rating,
      Time? time});

  @override
  $ConvenienceCopyWith<$Res>? get convenience;
  @override
  $EquipmentCopyWith<$Res>? get equipment;
  @override
  $RatingCopyWith<$Res>? get rating;
  @override
  $TimeCopyWith<$Res>? get time;
}

/// @nodoc
class __$$ToiletImplCopyWithImpl<$Res>
    extends _$ToiletCopyWithImpl<$Res, _$ToiletImpl>
    implements _$$ToiletImplCopyWith<$Res> {
  __$$ToiletImplCopyWithImpl(
      _$ToiletImpl _value, $Res Function(_$ToiletImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? visible = null,
    Object? gender = null,
    Object? password = null,
    Object? password_tip = null,
    Object? total_reviews = freezed,
    Object? location_type = null,
    Object? address = null,
    Object? road_address = null,
    Object? location_tip = null,
    Object? city = null,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? convenience = freezed,
    Object? equipment = freezed,
    Object? rating = freezed,
    Object? time = freezed,
  }) {
    return _then(_$ToiletImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as bool,
      password_tip: null == password_tip
          ? _value.password_tip
          : password_tip // ignore: cast_nullable_to_non_nullable
              as String,
      total_reviews: freezed == total_reviews
          ? _value.total_reviews
          : total_reviews // ignore: cast_nullable_to_non_nullable
              as int?,
      location_type: null == location_type
          ? _value.location_type
          : location_type // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      road_address: null == road_address
          ? _value.road_address
          : road_address // ignore: cast_nullable_to_non_nullable
              as String,
      location_tip: null == location_tip
          ? _value.location_tip
          : location_tip // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      convenience: freezed == convenience
          ? _value.convenience
          : convenience // ignore: cast_nullable_to_non_nullable
              as Convenience?,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as Equipment?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToiletImpl implements _Toilet {
  _$ToiletImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.visible,
      required this.gender,
      required this.password,
      this.password_tip = "",
      this.total_reviews = 0,
      required this.location_type,
      required this.address,
      required this.road_address,
      required this.location_tip,
      required this.city,
      this.lat,
      this.lng,
      this.convenience,
      this.equipment,
      this.rating,
      this.time});

  factory _$ToiletImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToiletImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int type;
  @override
  final bool visible;
  @override
  final bool gender;
  @override
  final bool password;
  @override
  @JsonKey()
  final String password_tip;
  @override
  @JsonKey()
  final int? total_reviews;
  @override
  final String location_type;
  @override
  final String address;
  @override
  final String road_address;
  @override
  final String location_tip;
  @override
  final String city;
  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final Convenience? convenience;
  @override
  final Equipment? equipment;
  @override
  final Rating? rating;
  @override
  final Time? time;

  @override
  String toString() {
    return 'Toilet(id: $id, name: $name, type: $type, visible: $visible, gender: $gender, password: $password, password_tip: $password_tip, total_reviews: $total_reviews, location_type: $location_type, address: $address, road_address: $road_address, location_tip: $location_tip, city: $city, lat: $lat, lng: $lng, convenience: $convenience, equipment: $equipment, rating: $rating, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToiletImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.password_tip, password_tip) ||
                other.password_tip == password_tip) &&
            (identical(other.total_reviews, total_reviews) ||
                other.total_reviews == total_reviews) &&
            (identical(other.location_type, location_type) ||
                other.location_type == location_type) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.road_address, road_address) ||
                other.road_address == road_address) &&
            (identical(other.location_tip, location_tip) ||
                other.location_tip == location_tip) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.convenience, convenience) ||
                other.convenience == convenience) &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        type,
        visible,
        gender,
        password,
        password_tip,
        total_reviews,
        location_type,
        address,
        road_address,
        location_tip,
        city,
        lat,
        lng,
        convenience,
        equipment,
        rating,
        time
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToiletImplCopyWith<_$ToiletImpl> get copyWith =>
      __$$ToiletImplCopyWithImpl<_$ToiletImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToiletImplToJson(
      this,
    );
  }
}

abstract class _Toilet implements Toilet {
  factory _Toilet(
      {required final int id,
      required final String name,
      required final int type,
      required final bool visible,
      required final bool gender,
      required final bool password,
      final String password_tip,
      final int? total_reviews,
      required final String location_type,
      required final String address,
      required final String road_address,
      required final String location_tip,
      required final String city,
      final double? lat,
      final double? lng,
      final Convenience? convenience,
      final Equipment? equipment,
      final Rating? rating,
      final Time? time}) = _$ToiletImpl;

  factory _Toilet.fromJson(Map<String, dynamic> json) = _$ToiletImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get type;
  @override
  bool get visible;
  @override
  bool get gender;
  @override
  bool get password;
  @override
  String get password_tip;
  @override
  int? get total_reviews;
  @override
  String get location_type;
  @override
  String get address;
  @override
  String get road_address;
  @override
  String get location_tip;
  @override
  String get city;
  @override
  double? get lat;
  @override
  double? get lng;
  @override
  Convenience? get convenience;
  @override
  Equipment? get equipment;
  @override
  Rating? get rating;
  @override
  Time? get time;
  @override
  @JsonKey(ignore: true)
  _$$ToiletImplCopyWith<_$ToiletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Convenience _$ConvenienceFromJson(Map<String, dynamic> json) {
  return _Convenience.fromJson(json);
}

/// @nodoc
mixin _$Convenience {
  bool get paper => throw _privateConstructorUsedError;
  bool get towel => throw _privateConstructorUsedError;
  bool get soap => throw _privateConstructorUsedError;
  bool get powder_room => throw _privateConstructorUsedError;
  bool get hand_dry => throw _privateConstructorUsedError;
  bool get vending => throw _privateConstructorUsedError;
  bool get diaper => throw _privateConstructorUsedError;
  bool get bell => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConvenienceCopyWith<Convenience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvenienceCopyWith<$Res> {
  factory $ConvenienceCopyWith(
          Convenience value, $Res Function(Convenience) then) =
      _$ConvenienceCopyWithImpl<$Res, Convenience>;
  @useResult
  $Res call(
      {bool paper,
      bool towel,
      bool soap,
      bool powder_room,
      bool hand_dry,
      bool vending,
      bool diaper,
      bool bell});
}

/// @nodoc
class _$ConvenienceCopyWithImpl<$Res, $Val extends Convenience>
    implements $ConvenienceCopyWith<$Res> {
  _$ConvenienceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paper = null,
    Object? towel = null,
    Object? soap = null,
    Object? powder_room = null,
    Object? hand_dry = null,
    Object? vending = null,
    Object? diaper = null,
    Object? bell = null,
  }) {
    return _then(_value.copyWith(
      paper: null == paper
          ? _value.paper
          : paper // ignore: cast_nullable_to_non_nullable
              as bool,
      towel: null == towel
          ? _value.towel
          : towel // ignore: cast_nullable_to_non_nullable
              as bool,
      soap: null == soap
          ? _value.soap
          : soap // ignore: cast_nullable_to_non_nullable
              as bool,
      powder_room: null == powder_room
          ? _value.powder_room
          : powder_room // ignore: cast_nullable_to_non_nullable
              as bool,
      hand_dry: null == hand_dry
          ? _value.hand_dry
          : hand_dry // ignore: cast_nullable_to_non_nullable
              as bool,
      vending: null == vending
          ? _value.vending
          : vending // ignore: cast_nullable_to_non_nullable
              as bool,
      diaper: null == diaper
          ? _value.diaper
          : diaper // ignore: cast_nullable_to_non_nullable
              as bool,
      bell: null == bell
          ? _value.bell
          : bell // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConvenienceImplCopyWith<$Res>
    implements $ConvenienceCopyWith<$Res> {
  factory _$$ConvenienceImplCopyWith(
          _$ConvenienceImpl value, $Res Function(_$ConvenienceImpl) then) =
      __$$ConvenienceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool paper,
      bool towel,
      bool soap,
      bool powder_room,
      bool hand_dry,
      bool vending,
      bool diaper,
      bool bell});
}

/// @nodoc
class __$$ConvenienceImplCopyWithImpl<$Res>
    extends _$ConvenienceCopyWithImpl<$Res, _$ConvenienceImpl>
    implements _$$ConvenienceImplCopyWith<$Res> {
  __$$ConvenienceImplCopyWithImpl(
      _$ConvenienceImpl _value, $Res Function(_$ConvenienceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paper = null,
    Object? towel = null,
    Object? soap = null,
    Object? powder_room = null,
    Object? hand_dry = null,
    Object? vending = null,
    Object? diaper = null,
    Object? bell = null,
  }) {
    return _then(_$ConvenienceImpl(
      paper: null == paper
          ? _value.paper
          : paper // ignore: cast_nullable_to_non_nullable
              as bool,
      towel: null == towel
          ? _value.towel
          : towel // ignore: cast_nullable_to_non_nullable
              as bool,
      soap: null == soap
          ? _value.soap
          : soap // ignore: cast_nullable_to_non_nullable
              as bool,
      powder_room: null == powder_room
          ? _value.powder_room
          : powder_room // ignore: cast_nullable_to_non_nullable
              as bool,
      hand_dry: null == hand_dry
          ? _value.hand_dry
          : hand_dry // ignore: cast_nullable_to_non_nullable
              as bool,
      vending: null == vending
          ? _value.vending
          : vending // ignore: cast_nullable_to_non_nullable
              as bool,
      diaper: null == diaper
          ? _value.diaper
          : diaper // ignore: cast_nullable_to_non_nullable
              as bool,
      bell: null == bell
          ? _value.bell
          : bell // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConvenienceImpl implements _Convenience {
  _$ConvenienceImpl(
      {required this.paper,
      required this.towel,
      required this.soap,
      required this.powder_room,
      required this.hand_dry,
      required this.vending,
      required this.diaper,
      required this.bell});

  factory _$ConvenienceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConvenienceImplFromJson(json);

  @override
  final bool paper;
  @override
  final bool towel;
  @override
  final bool soap;
  @override
  final bool powder_room;
  @override
  final bool hand_dry;
  @override
  final bool vending;
  @override
  final bool diaper;
  @override
  final bool bell;

  @override
  String toString() {
    return 'Convenience(paper: $paper, towel: $towel, soap: $soap, powder_room: $powder_room, hand_dry: $hand_dry, vending: $vending, diaper: $diaper, bell: $bell)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvenienceImpl &&
            (identical(other.paper, paper) || other.paper == paper) &&
            (identical(other.towel, towel) || other.towel == towel) &&
            (identical(other.soap, soap) || other.soap == soap) &&
            (identical(other.powder_room, powder_room) ||
                other.powder_room == powder_room) &&
            (identical(other.hand_dry, hand_dry) ||
                other.hand_dry == hand_dry) &&
            (identical(other.vending, vending) || other.vending == vending) &&
            (identical(other.diaper, diaper) || other.diaper == diaper) &&
            (identical(other.bell, bell) || other.bell == bell));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paper, towel, soap, powder_room,
      hand_dry, vending, diaper, bell);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvenienceImplCopyWith<_$ConvenienceImpl> get copyWith =>
      __$$ConvenienceImplCopyWithImpl<_$ConvenienceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConvenienceImplToJson(
      this,
    );
  }
}

abstract class _Convenience implements Convenience {
  factory _Convenience(
      {required final bool paper,
      required final bool towel,
      required final bool soap,
      required final bool powder_room,
      required final bool hand_dry,
      required final bool vending,
      required final bool diaper,
      required final bool bell}) = _$ConvenienceImpl;

  factory _Convenience.fromJson(Map<String, dynamic> json) =
      _$ConvenienceImpl.fromJson;

  @override
  bool get paper;
  @override
  bool get towel;
  @override
  bool get soap;
  @override
  bool get powder_room;
  @override
  bool get hand_dry;
  @override
  bool get vending;
  @override
  bool get diaper;
  @override
  bool get bell;
  @override
  @JsonKey(ignore: true)
  _$$ConvenienceImplCopyWith<_$ConvenienceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Equipment _$EquipmentFromJson(Map<String, dynamic> json) {
  return _Equipment.fromJson(json);
}

/// @nodoc
mixin _$Equipment {
  List<int> get urinal => throw _privateConstructorUsedError;
  List<int> get child_urinal => throw _privateConstructorUsedError;
  List<int> get disable_urinal => throw _privateConstructorUsedError;
  List<int> get seat => throw _privateConstructorUsedError;
  List<int> get child_seat => throw _privateConstructorUsedError;
  List<int> get disable_seat => throw _privateConstructorUsedError;
  List<int> get washbasin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentCopyWith<Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentCopyWith<$Res> {
  factory $EquipmentCopyWith(Equipment value, $Res Function(Equipment) then) =
      _$EquipmentCopyWithImpl<$Res, Equipment>;
  @useResult
  $Res call(
      {List<int> urinal,
      List<int> child_urinal,
      List<int> disable_urinal,
      List<int> seat,
      List<int> child_seat,
      List<int> disable_seat,
      List<int> washbasin});
}

/// @nodoc
class _$EquipmentCopyWithImpl<$Res, $Val extends Equipment>
    implements $EquipmentCopyWith<$Res> {
  _$EquipmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urinal = null,
    Object? child_urinal = null,
    Object? disable_urinal = null,
    Object? seat = null,
    Object? child_seat = null,
    Object? disable_seat = null,
    Object? washbasin = null,
  }) {
    return _then(_value.copyWith(
      urinal: null == urinal
          ? _value.urinal
          : urinal // ignore: cast_nullable_to_non_nullable
              as List<int>,
      child_urinal: null == child_urinal
          ? _value.child_urinal
          : child_urinal // ignore: cast_nullable_to_non_nullable
              as List<int>,
      disable_urinal: null == disable_urinal
          ? _value.disable_urinal
          : disable_urinal // ignore: cast_nullable_to_non_nullable
              as List<int>,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as List<int>,
      child_seat: null == child_seat
          ? _value.child_seat
          : child_seat // ignore: cast_nullable_to_non_nullable
              as List<int>,
      disable_seat: null == disable_seat
          ? _value.disable_seat
          : disable_seat // ignore: cast_nullable_to_non_nullable
              as List<int>,
      washbasin: null == washbasin
          ? _value.washbasin
          : washbasin // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EquipmentImplCopyWith<$Res>
    implements $EquipmentCopyWith<$Res> {
  factory _$$EquipmentImplCopyWith(
          _$EquipmentImpl value, $Res Function(_$EquipmentImpl) then) =
      __$$EquipmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> urinal,
      List<int> child_urinal,
      List<int> disable_urinal,
      List<int> seat,
      List<int> child_seat,
      List<int> disable_seat,
      List<int> washbasin});
}

/// @nodoc
class __$$EquipmentImplCopyWithImpl<$Res>
    extends _$EquipmentCopyWithImpl<$Res, _$EquipmentImpl>
    implements _$$EquipmentImplCopyWith<$Res> {
  __$$EquipmentImplCopyWithImpl(
      _$EquipmentImpl _value, $Res Function(_$EquipmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urinal = null,
    Object? child_urinal = null,
    Object? disable_urinal = null,
    Object? seat = null,
    Object? child_seat = null,
    Object? disable_seat = null,
    Object? washbasin = null,
  }) {
    return _then(_$EquipmentImpl(
      urinal: null == urinal
          ? _value._urinal
          : urinal // ignore: cast_nullable_to_non_nullable
              as List<int>,
      child_urinal: null == child_urinal
          ? _value._child_urinal
          : child_urinal // ignore: cast_nullable_to_non_nullable
              as List<int>,
      disable_urinal: null == disable_urinal
          ? _value._disable_urinal
          : disable_urinal // ignore: cast_nullable_to_non_nullable
              as List<int>,
      seat: null == seat
          ? _value._seat
          : seat // ignore: cast_nullable_to_non_nullable
              as List<int>,
      child_seat: null == child_seat
          ? _value._child_seat
          : child_seat // ignore: cast_nullable_to_non_nullable
              as List<int>,
      disable_seat: null == disable_seat
          ? _value._disable_seat
          : disable_seat // ignore: cast_nullable_to_non_nullable
              as List<int>,
      washbasin: null == washbasin
          ? _value._washbasin
          : washbasin // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EquipmentImpl implements _Equipment {
  _$EquipmentImpl(
      {required final List<int> urinal,
      required final List<int> child_urinal,
      required final List<int> disable_urinal,
      required final List<int> seat,
      required final List<int> child_seat,
      required final List<int> disable_seat,
      required final List<int> washbasin})
      : _urinal = urinal,
        _child_urinal = child_urinal,
        _disable_urinal = disable_urinal,
        _seat = seat,
        _child_seat = child_seat,
        _disable_seat = disable_seat,
        _washbasin = washbasin;

  factory _$EquipmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentImplFromJson(json);

  final List<int> _urinal;
  @override
  List<int> get urinal {
    if (_urinal is EqualUnmodifiableListView) return _urinal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urinal);
  }

  final List<int> _child_urinal;
  @override
  List<int> get child_urinal {
    if (_child_urinal is EqualUnmodifiableListView) return _child_urinal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_child_urinal);
  }

  final List<int> _disable_urinal;
  @override
  List<int> get disable_urinal {
    if (_disable_urinal is EqualUnmodifiableListView) return _disable_urinal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disable_urinal);
  }

  final List<int> _seat;
  @override
  List<int> get seat {
    if (_seat is EqualUnmodifiableListView) return _seat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seat);
  }

  final List<int> _child_seat;
  @override
  List<int> get child_seat {
    if (_child_seat is EqualUnmodifiableListView) return _child_seat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_child_seat);
  }

  final List<int> _disable_seat;
  @override
  List<int> get disable_seat {
    if (_disable_seat is EqualUnmodifiableListView) return _disable_seat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disable_seat);
  }

  final List<int> _washbasin;
  @override
  List<int> get washbasin {
    if (_washbasin is EqualUnmodifiableListView) return _washbasin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_washbasin);
  }

  @override
  String toString() {
    return 'Equipment(urinal: $urinal, child_urinal: $child_urinal, disable_urinal: $disable_urinal, seat: $seat, child_seat: $child_seat, disable_seat: $disable_seat, washbasin: $washbasin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentImpl &&
            const DeepCollectionEquality().equals(other._urinal, _urinal) &&
            const DeepCollectionEquality()
                .equals(other._child_urinal, _child_urinal) &&
            const DeepCollectionEquality()
                .equals(other._disable_urinal, _disable_urinal) &&
            const DeepCollectionEquality().equals(other._seat, _seat) &&
            const DeepCollectionEquality()
                .equals(other._child_seat, _child_seat) &&
            const DeepCollectionEquality()
                .equals(other._disable_seat, _disable_seat) &&
            const DeepCollectionEquality()
                .equals(other._washbasin, _washbasin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_urinal),
      const DeepCollectionEquality().hash(_child_urinal),
      const DeepCollectionEquality().hash(_disable_urinal),
      const DeepCollectionEquality().hash(_seat),
      const DeepCollectionEquality().hash(_child_seat),
      const DeepCollectionEquality().hash(_disable_seat),
      const DeepCollectionEquality().hash(_washbasin));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentImplCopyWith<_$EquipmentImpl> get copyWith =>
      __$$EquipmentImplCopyWithImpl<_$EquipmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipmentImplToJson(
      this,
    );
  }
}

abstract class _Equipment implements Equipment {
  factory _Equipment(
      {required final List<int> urinal,
      required final List<int> child_urinal,
      required final List<int> disable_urinal,
      required final List<int> seat,
      required final List<int> child_seat,
      required final List<int> disable_seat,
      required final List<int> washbasin}) = _$EquipmentImpl;

  factory _Equipment.fromJson(Map<String, dynamic> json) =
      _$EquipmentImpl.fromJson;

  @override
  List<int> get urinal;
  @override
  List<int> get child_urinal;
  @override
  List<int> get disable_urinal;
  @override
  List<int> get seat;
  @override
  List<int> get child_seat;
  @override
  List<int> get disable_seat;
  @override
  List<int> get washbasin;
  @override
  @JsonKey(ignore: true)
  _$$EquipmentImplCopyWith<_$EquipmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  double get cleanliness => throw _privateConstructorUsedError;
  double get safety => throw _privateConstructorUsedError;
  double get convenience => throw _privateConstructorUsedError;
  double get management => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call(
      {double cleanliness,
      double safety,
      double convenience,
      double management});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cleanliness = null,
    Object? safety = null,
    Object? convenience = null,
    Object? management = null,
  }) {
    return _then(_value.copyWith(
      cleanliness: null == cleanliness
          ? _value.cleanliness
          : cleanliness // ignore: cast_nullable_to_non_nullable
              as double,
      safety: null == safety
          ? _value.safety
          : safety // ignore: cast_nullable_to_non_nullable
              as double,
      convenience: null == convenience
          ? _value.convenience
          : convenience // ignore: cast_nullable_to_non_nullable
              as double,
      management: null == management
          ? _value.management
          : management // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double cleanliness,
      double safety,
      double convenience,
      double management});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cleanliness = null,
    Object? safety = null,
    Object? convenience = null,
    Object? management = null,
  }) {
    return _then(_$RatingImpl(
      cleanliness: null == cleanliness
          ? _value.cleanliness
          : cleanliness // ignore: cast_nullable_to_non_nullable
              as double,
      safety: null == safety
          ? _value.safety
          : safety // ignore: cast_nullable_to_non_nullable
              as double,
      convenience: null == convenience
          ? _value.convenience
          : convenience // ignore: cast_nullable_to_non_nullable
              as double,
      management: null == management
          ? _value.management
          : management // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl implements _Rating {
  _$RatingImpl(
      {required this.cleanliness,
      required this.safety,
      required this.convenience,
      required this.management});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  final double cleanliness;
  @override
  final double safety;
  @override
  final double convenience;
  @override
  final double management;

  @override
  String toString() {
    return 'Rating(cleanliness: $cleanliness, safety: $safety, convenience: $convenience, management: $management)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.cleanliness, cleanliness) ||
                other.cleanliness == cleanliness) &&
            (identical(other.safety, safety) || other.safety == safety) &&
            (identical(other.convenience, convenience) ||
                other.convenience == convenience) &&
            (identical(other.management, management) ||
                other.management == management));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cleanliness, safety, convenience, management);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  factory _Rating(
      {required final double cleanliness,
      required final double safety,
      required final double convenience,
      required final double management}) = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  double get cleanliness;
  @override
  double get safety;
  @override
  double get convenience;
  @override
  double get management;
  @override
  @JsonKey(ignore: true)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Time _$TimeFromJson(Map<String, dynamic> json) {
  return _Time.fromJson(json);
}

/// @nodoc
mixin _$Time {
  OperateTime get mon => throw _privateConstructorUsedError;
  OperateTime get tue => throw _privateConstructorUsedError;
  OperateTime get wed => throw _privateConstructorUsedError;
  OperateTime get thu => throw _privateConstructorUsedError;
  OperateTime get fri => throw _privateConstructorUsedError;
  OperateTime get sat => throw _privateConstructorUsedError;
  OperateTime get sun => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeCopyWith<Time> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCopyWith<$Res> {
  factory $TimeCopyWith(Time value, $Res Function(Time) then) =
      _$TimeCopyWithImpl<$Res, Time>;
  @useResult
  $Res call(
      {OperateTime mon,
      OperateTime tue,
      OperateTime wed,
      OperateTime thu,
      OperateTime fri,
      OperateTime sat,
      OperateTime sun});

  $OperateTimeCopyWith<$Res> get mon;
  $OperateTimeCopyWith<$Res> get tue;
  $OperateTimeCopyWith<$Res> get wed;
  $OperateTimeCopyWith<$Res> get thu;
  $OperateTimeCopyWith<$Res> get fri;
  $OperateTimeCopyWith<$Res> get sat;
  $OperateTimeCopyWith<$Res> get sun;
}

/// @nodoc
class _$TimeCopyWithImpl<$Res, $Val extends Time>
    implements $TimeCopyWith<$Res> {
  _$TimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mon = null,
    Object? tue = null,
    Object? wed = null,
    Object? thu = null,
    Object? fri = null,
    Object? sat = null,
    Object? sun = null,
  }) {
    return _then(_value.copyWith(
      mon: null == mon
          ? _value.mon
          : mon // ignore: cast_nullable_to_non_nullable
              as OperateTime,
      tue: null == tue
          ? _value.tue
          : tue // ignore: cast_nullable_to_non_nullable
              as OperateTime,
      wed: null == wed
          ? _value.wed
          : wed // ignore: cast_nullable_to_non_nullable
              as OperateTime,
      thu: null == thu
          ? _value.thu
          : thu // ignore: cast_nullable_to_non_nullable
              as OperateTime,
      fri: null == fri
          ? _value.fri
          : fri // ignore: cast_nullable_to_non_nullable
              as OperateTime,
      sat: null == sat
          ? _value.sat
          : sat // ignore: cast_nullable_to_non_nullable
              as OperateTime,
      sun: null == sun
          ? _value.sun
          : sun // ignore: cast_nullable_to_non_nullable
              as OperateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OperateTimeCopyWith<$Res> get mon {
    return $OperateTimeCopyWith<$Res>(_value.mon, (value) {
      return _then(_value.copyWith(mon: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OperateTimeCopyWith<$Res> get tue {
    return $OperateTimeCopyWith<$Res>(_value.tue, (value) {
      return _then(_value.copyWith(tue: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OperateTimeCopyWith<$Res> get wed {
    return $OperateTimeCopyWith<$Res>(_value.wed, (value) {
      return _then(_value.copyWith(wed: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OperateTimeCopyWith<$Res> get thu {
    return $OperateTimeCopyWith<$Res>(_value.thu, (value) {
      return _then(_value.copyWith(thu: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OperateTimeCopyWith<$Res> get fri {
    return $OperateTimeCopyWith<$Res>(_value.fri, (value) {
      return _then(_value.copyWith(fri: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OperateTimeCopyWith<$Res> get sat {
    return $OperateTimeCopyWith<$Res>(_value.sat, (value) {
      return _then(_value.copyWith(sat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OperateTimeCopyWith<$Res> get sun {
    return $OperateTimeCopyWith<$Res>(_value.sun, (value) {
      return _then(_value.copyWith(sun: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeImplCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$$TimeImplCopyWith(
          _$TimeImpl value, $Res Function(_$TimeImpl) then) =
      __$$TimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OperateTime mon,
      OperateTime tue,
      OperateTime wed,
      OperateTime thu,
      OperateTime fri,
      OperateTime sat,
      OperateTime sun});

  @override
  $OperateTimeCopyWith<$Res> get mon;
  @override
  $OperateTimeCopyWith<$Res> get tue;
  @override
  $OperateTimeCopyWith<$Res> get wed;
  @override
  $OperateTimeCopyWith<$Res> get thu;
  @override
  $OperateTimeCopyWith<$Res> get fri;
  @override
  $OperateTimeCopyWith<$Res> get sat;
  @override
  $OperateTimeCopyWith<$Res> get sun;
}

/// @nodoc
class __$$TimeImplCopyWithImpl<$Res>
    extends _$TimeCopyWithImpl<$Res, _$TimeImpl>
    implements _$$TimeImplCopyWith<$Res> {
  __$$TimeImplCopyWithImpl(_$TimeImpl _value, $Res Function(_$TimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mon = null,
    Object? tue = null,
    Object? wed = null,
    Object? thu = null,
    Object? fri = null,
    Object? sat = null,
    Object? sun = null,
  }) {
    return _then(_$TimeImpl(
      mon: null == mon
          ? _value.mon
          : mon // ignore: cast_nullable_to_non_nullable
              as OperateTime,
      tue: null == tue
          ? _value.tue
          : tue // ignore: cast_nullable_to_non_nullable
              as OperateTime,
      wed: null == wed
          ? _value.wed
          : wed // ignore: cast_nullable_to_non_nullable
              as OperateTime,
      thu: null == thu
          ? _value.thu
          : thu // ignore: cast_nullable_to_non_nullable
              as OperateTime,
      fri: null == fri
          ? _value.fri
          : fri // ignore: cast_nullable_to_non_nullable
              as OperateTime,
      sat: null == sat
          ? _value.sat
          : sat // ignore: cast_nullable_to_non_nullable
              as OperateTime,
      sun: null == sun
          ? _value.sun
          : sun // ignore: cast_nullable_to_non_nullable
              as OperateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeImpl implements _Time {
  _$TimeImpl(
      {required this.mon,
      required this.tue,
      required this.wed,
      required this.thu,
      required this.fri,
      required this.sat,
      required this.sun});

  factory _$TimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeImplFromJson(json);

  @override
  final OperateTime mon;
  @override
  final OperateTime tue;
  @override
  final OperateTime wed;
  @override
  final OperateTime thu;
  @override
  final OperateTime fri;
  @override
  final OperateTime sat;
  @override
  final OperateTime sun;

  @override
  String toString() {
    return 'Time(mon: $mon, tue: $tue, wed: $wed, thu: $thu, fri: $fri, sat: $sat, sun: $sun)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeImpl &&
            (identical(other.mon, mon) || other.mon == mon) &&
            (identical(other.tue, tue) || other.tue == tue) &&
            (identical(other.wed, wed) || other.wed == wed) &&
            (identical(other.thu, thu) || other.thu == thu) &&
            (identical(other.fri, fri) || other.fri == fri) &&
            (identical(other.sat, sat) || other.sat == sat) &&
            (identical(other.sun, sun) || other.sun == sun));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mon, tue, wed, thu, fri, sat, sun);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      __$$TimeImplCopyWithImpl<_$TimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeImplToJson(
      this,
    );
  }
}

abstract class _Time implements Time {
  factory _Time(
      {required final OperateTime mon,
      required final OperateTime tue,
      required final OperateTime wed,
      required final OperateTime thu,
      required final OperateTime fri,
      required final OperateTime sat,
      required final OperateTime sun}) = _$TimeImpl;

  factory _Time.fromJson(Map<String, dynamic> json) = _$TimeImpl.fromJson;

  @override
  OperateTime get mon;
  @override
  OperateTime get tue;
  @override
  OperateTime get wed;
  @override
  OperateTime get thu;
  @override
  OperateTime get fri;
  @override
  OperateTime get sat;
  @override
  OperateTime get sun;
  @override
  @JsonKey(ignore: true)
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OperateTime _$OperateTimeFromJson(Map<String, dynamic> json) {
  return _OperateTime.fromJson(json);
}

/// @nodoc
mixin _$OperateTime {
  String? get open => throw _privateConstructorUsedError;
  String? get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperateTimeCopyWith<OperateTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperateTimeCopyWith<$Res> {
  factory $OperateTimeCopyWith(
          OperateTime value, $Res Function(OperateTime) then) =
      _$OperateTimeCopyWithImpl<$Res, OperateTime>;
  @useResult
  $Res call({String? open, String? close});
}

/// @nodoc
class _$OperateTimeCopyWithImpl<$Res, $Val extends OperateTime>
    implements $OperateTimeCopyWith<$Res> {
  _$OperateTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = freezed,
    Object? close = freezed,
  }) {
    return _then(_value.copyWith(
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String?,
      close: freezed == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OperateTimeImplCopyWith<$Res>
    implements $OperateTimeCopyWith<$Res> {
  factory _$$OperateTimeImplCopyWith(
          _$OperateTimeImpl value, $Res Function(_$OperateTimeImpl) then) =
      __$$OperateTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? open, String? close});
}

/// @nodoc
class __$$OperateTimeImplCopyWithImpl<$Res>
    extends _$OperateTimeCopyWithImpl<$Res, _$OperateTimeImpl>
    implements _$$OperateTimeImplCopyWith<$Res> {
  __$$OperateTimeImplCopyWithImpl(
      _$OperateTimeImpl _value, $Res Function(_$OperateTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = freezed,
    Object? close = freezed,
  }) {
    return _then(_$OperateTimeImpl(
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String?,
      close: freezed == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperateTimeImpl implements _OperateTime {
  _$OperateTimeImpl({required this.open, required this.close});

  factory _$OperateTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$OperateTimeImplFromJson(json);

  @override
  final String? open;
  @override
  final String? close;

  @override
  String toString() {
    return 'OperateTime(open: $open, close: $close)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperateTimeImpl &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, open, close);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperateTimeImplCopyWith<_$OperateTimeImpl> get copyWith =>
      __$$OperateTimeImplCopyWithImpl<_$OperateTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperateTimeImplToJson(
      this,
    );
  }
}

abstract class _OperateTime implements OperateTime {
  factory _OperateTime(
      {required final String? open,
      required final String? close}) = _$OperateTimeImpl;

  factory _OperateTime.fromJson(Map<String, dynamic> json) =
      _$OperateTimeImpl.fromJson;

  @override
  String? get open;
  @override
  String? get close;
  @override
  @JsonKey(ignore: true)
  _$$OperateTimeImplCopyWith<_$OperateTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
