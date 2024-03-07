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
  String get type => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  bool get gender => throw _privateConstructorUsedError;
  bool get password => throw _privateConstructorUsedError;
  String get password_tip => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  double get reviews => throw _privateConstructorUsedError;
  String get location_type => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get road_address => throw _privateConstructorUsedError;
  String get location_tip => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  Convenience? get convenience => throw _privateConstructorUsedError;
  Equipment? get equipment => throw _privateConstructorUsedError;
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
      String type,
      bool visible,
      bool gender,
      bool password,
      String password_tip,
      double rating,
      double reviews,
      String location_type,
      String address,
      String road_address,
      String location_tip,
      String city,
      double lat,
      double lng,
      Convenience? convenience,
      Equipment? equipment,
      Time? time});

  $ConvenienceCopyWith<$Res>? get convenience;
  $EquipmentCopyWith<$Res>? get equipment;
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
    Object? rating = null,
    Object? reviews = null,
    Object? location_type = null,
    Object? address = null,
    Object? road_address = null,
    Object? location_tip = null,
    Object? city = null,
    Object? lat = null,
    Object? lng = null,
    Object? convenience = freezed,
    Object? equipment = freezed,
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
              as String,
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
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as double,
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
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      convenience: freezed == convenience
          ? _value.convenience
          : convenience // ignore: cast_nullable_to_non_nullable
              as Convenience?,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as Equipment?,
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
      String type,
      bool visible,
      bool gender,
      bool password,
      String password_tip,
      double rating,
      double reviews,
      String location_type,
      String address,
      String road_address,
      String location_tip,
      String city,
      double lat,
      double lng,
      Convenience? convenience,
      Equipment? equipment,
      Time? time});

  @override
  $ConvenienceCopyWith<$Res>? get convenience;
  @override
  $EquipmentCopyWith<$Res>? get equipment;
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
    Object? rating = null,
    Object? reviews = null,
    Object? location_type = null,
    Object? address = null,
    Object? road_address = null,
    Object? location_tip = null,
    Object? city = null,
    Object? lat = null,
    Object? lng = null,
    Object? convenience = freezed,
    Object? equipment = freezed,
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
              as String,
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
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as double,
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
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      convenience: freezed == convenience
          ? _value.convenience
          : convenience // ignore: cast_nullable_to_non_nullable
              as Convenience?,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as Equipment?,
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
      this.rating = 0,
      this.reviews = 0,
      required this.location_type,
      required this.address,
      required this.road_address,
      required this.location_tip,
      required this.city,
      required this.lat,
      required this.lng,
      this.convenience,
      this.equipment,
      this.time});

  factory _$ToiletImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToiletImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
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
  final double rating;
  @override
  @JsonKey()
  final double reviews;
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
  final double lat;
  @override
  final double lng;
  @override
  final Convenience? convenience;
  @override
  final Equipment? equipment;
  @override
  final Time? time;

  @override
  String toString() {
    return 'Toilet(id: $id, name: $name, type: $type, visible: $visible, gender: $gender, password: $password, password_tip: $password_tip, rating: $rating, reviews: $reviews, location_type: $location_type, address: $address, road_address: $road_address, location_tip: $location_tip, city: $city, lat: $lat, lng: $lng, convenience: $convenience, equipment: $equipment, time: $time)';
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
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviews, reviews) || other.reviews == reviews) &&
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
        rating,
        reviews,
        location_type,
        address,
        road_address,
        location_tip,
        city,
        lat,
        lng,
        convenience,
        equipment,
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
      required final String type,
      required final bool visible,
      required final bool gender,
      required final bool password,
      final String password_tip,
      final double rating,
      final double reviews,
      required final String location_type,
      required final String address,
      required final String road_address,
      required final String location_tip,
      required final String city,
      required final double lat,
      required final double lng,
      final Convenience? convenience,
      final Equipment? equipment,
      final Time? time}) = _$ToiletImpl;

  factory _Toilet.fromJson(Map<String, dynamic> json) = _$ToiletImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  bool get visible;
  @override
  bool get gender;
  @override
  bool get password;
  @override
  String get password_tip;
  @override
  double get rating;
  @override
  double get reviews;
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
  double get lat;
  @override
  double get lng;
  @override
  Convenience? get convenience;
  @override
  Equipment? get equipment;
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
  String get urinal => throw _privateConstructorUsedError;
  String get child_urinal => throw _privateConstructorUsedError;
  String get disable_urinal => throw _privateConstructorUsedError;
  String get seat => throw _privateConstructorUsedError;
  String get child_seat => throw _privateConstructorUsedError;
  String get disable_seat => throw _privateConstructorUsedError;
  String get washbasin => throw _privateConstructorUsedError;

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
      {String urinal,
      String child_urinal,
      String disable_urinal,
      String seat,
      String child_seat,
      String disable_seat,
      String washbasin});
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
              as String,
      child_urinal: null == child_urinal
          ? _value.child_urinal
          : child_urinal // ignore: cast_nullable_to_non_nullable
              as String,
      disable_urinal: null == disable_urinal
          ? _value.disable_urinal
          : disable_urinal // ignore: cast_nullable_to_non_nullable
              as String,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as String,
      child_seat: null == child_seat
          ? _value.child_seat
          : child_seat // ignore: cast_nullable_to_non_nullable
              as String,
      disable_seat: null == disable_seat
          ? _value.disable_seat
          : disable_seat // ignore: cast_nullable_to_non_nullable
              as String,
      washbasin: null == washbasin
          ? _value.washbasin
          : washbasin // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String urinal,
      String child_urinal,
      String disable_urinal,
      String seat,
      String child_seat,
      String disable_seat,
      String washbasin});
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
          ? _value.urinal
          : urinal // ignore: cast_nullable_to_non_nullable
              as String,
      child_urinal: null == child_urinal
          ? _value.child_urinal
          : child_urinal // ignore: cast_nullable_to_non_nullable
              as String,
      disable_urinal: null == disable_urinal
          ? _value.disable_urinal
          : disable_urinal // ignore: cast_nullable_to_non_nullable
              as String,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as String,
      child_seat: null == child_seat
          ? _value.child_seat
          : child_seat // ignore: cast_nullable_to_non_nullable
              as String,
      disable_seat: null == disable_seat
          ? _value.disable_seat
          : disable_seat // ignore: cast_nullable_to_non_nullable
              as String,
      washbasin: null == washbasin
          ? _value.washbasin
          : washbasin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EquipmentImpl implements _Equipment {
  _$EquipmentImpl(
      {required this.urinal,
      required this.child_urinal,
      required this.disable_urinal,
      required this.seat,
      required this.child_seat,
      required this.disable_seat,
      required this.washbasin});

  factory _$EquipmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentImplFromJson(json);

  @override
  final String urinal;
  @override
  final String child_urinal;
  @override
  final String disable_urinal;
  @override
  final String seat;
  @override
  final String child_seat;
  @override
  final String disable_seat;
  @override
  final String washbasin;

  @override
  String toString() {
    return 'Equipment(urinal: $urinal, child_urinal: $child_urinal, disable_urinal: $disable_urinal, seat: $seat, child_seat: $child_seat, disable_seat: $disable_seat, washbasin: $washbasin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentImpl &&
            (identical(other.urinal, urinal) || other.urinal == urinal) &&
            (identical(other.child_urinal, child_urinal) ||
                other.child_urinal == child_urinal) &&
            (identical(other.disable_urinal, disable_urinal) ||
                other.disable_urinal == disable_urinal) &&
            (identical(other.seat, seat) || other.seat == seat) &&
            (identical(other.child_seat, child_seat) ||
                other.child_seat == child_seat) &&
            (identical(other.disable_seat, disable_seat) ||
                other.disable_seat == disable_seat) &&
            (identical(other.washbasin, washbasin) ||
                other.washbasin == washbasin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, urinal, child_urinal,
      disable_urinal, seat, child_seat, disable_seat, washbasin);

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
      {required final String urinal,
      required final String child_urinal,
      required final String disable_urinal,
      required final String seat,
      required final String child_seat,
      required final String disable_seat,
      required final String washbasin}) = _$EquipmentImpl;

  factory _Equipment.fromJson(Map<String, dynamic> json) =
      _$EquipmentImpl.fromJson;

  @override
  String get urinal;
  @override
  String get child_urinal;
  @override
  String get disable_urinal;
  @override
  String get seat;
  @override
  String get child_seat;
  @override
  String get disable_seat;
  @override
  String get washbasin;
  @override
  @JsonKey(ignore: true)
  _$$EquipmentImplCopyWith<_$EquipmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Time _$TimeFromJson(Map<String, dynamic> json) {
  return _Time.fromJson(json);
}

/// @nodoc
mixin _$Time {
  String get mon => throw _privateConstructorUsedError;
  String get tue => throw _privateConstructorUsedError;
  String get wed => throw _privateConstructorUsedError;
  String get thu => throw _privateConstructorUsedError;
  String get fri => throw _privateConstructorUsedError;
  String get sat => throw _privateConstructorUsedError;
  String get sun => throw _privateConstructorUsedError;

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
      {String mon,
      String tue,
      String wed,
      String thu,
      String fri,
      String sat,
      String sun});
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
              as String,
      tue: null == tue
          ? _value.tue
          : tue // ignore: cast_nullable_to_non_nullable
              as String,
      wed: null == wed
          ? _value.wed
          : wed // ignore: cast_nullable_to_non_nullable
              as String,
      thu: null == thu
          ? _value.thu
          : thu // ignore: cast_nullable_to_non_nullable
              as String,
      fri: null == fri
          ? _value.fri
          : fri // ignore: cast_nullable_to_non_nullable
              as String,
      sat: null == sat
          ? _value.sat
          : sat // ignore: cast_nullable_to_non_nullable
              as String,
      sun: null == sun
          ? _value.sun
          : sun // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
      {String mon,
      String tue,
      String wed,
      String thu,
      String fri,
      String sat,
      String sun});
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
              as String,
      tue: null == tue
          ? _value.tue
          : tue // ignore: cast_nullable_to_non_nullable
              as String,
      wed: null == wed
          ? _value.wed
          : wed // ignore: cast_nullable_to_non_nullable
              as String,
      thu: null == thu
          ? _value.thu
          : thu // ignore: cast_nullable_to_non_nullable
              as String,
      fri: null == fri
          ? _value.fri
          : fri // ignore: cast_nullable_to_non_nullable
              as String,
      sat: null == sat
          ? _value.sat
          : sat // ignore: cast_nullable_to_non_nullable
              as String,
      sun: null == sun
          ? _value.sun
          : sun // ignore: cast_nullable_to_non_nullable
              as String,
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
  final String mon;
  @override
  final String tue;
  @override
  final String wed;
  @override
  final String thu;
  @override
  final String fri;
  @override
  final String sat;
  @override
  final String sun;

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
      {required final String mon,
      required final String tue,
      required final String wed,
      required final String thu,
      required final String fri,
      required final String sat,
      required final String sun}) = _$TimeImpl;

  factory _Time.fromJson(Map<String, dynamic> json) = _$TimeImpl.fromJson;

  @override
  String get mon;
  @override
  String get tue;
  @override
  String get wed;
  @override
  String get thu;
  @override
  String get fri;
  @override
  String get sat;
  @override
  String get sun;
  @override
  @JsonKey(ignore: true)
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
