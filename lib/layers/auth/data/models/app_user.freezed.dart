// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get id => throw _privateConstructorUsedError;
  Map<String, dynamic> get appMetadata => throw _privateConstructorUsedError;
  Map<String, dynamic>? get userMetadata => throw _privateConstructorUsedError;
  String get aud => throw _privateConstructorUsedError;
  String? get confirmationSentAt => throw _privateConstructorUsedError;
  String? get recoverySentAt => throw _privateConstructorUsedError;
  String? get emailChangeSentAt => throw _privateConstructorUsedError;
  String? get newEmail => throw _privateConstructorUsedError;
  String? get invitedAt => throw _privateConstructorUsedError;
  String? get actionLink => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get confirmedAt => throw _privateConstructorUsedError;
  String? get phoneConfirmedAt => throw _privateConstructorUsedError;
  String? get lastSignInAt => throw _privateConstructorUsedError;
  String? get emailConfirmedAt => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  List<AppUserIdentity>? get identities => throw _privateConstructorUsedError;
  List<Factor>? get factors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {String id,
      Map<String, dynamic> appMetadata,
      Map<String, dynamic>? userMetadata,
      String aud,
      String? confirmationSentAt,
      String? recoverySentAt,
      String? emailChangeSentAt,
      String? newEmail,
      String? invitedAt,
      String? actionLink,
      String? email,
      String? phone,
      String createdAt,
      String? confirmedAt,
      String? phoneConfirmedAt,
      String? lastSignInAt,
      String? emailConfirmedAt,
      String? role,
      String? updatedAt,
      List<AppUserIdentity>? identities,
      List<Factor>? factors});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appMetadata = null,
    Object? userMetadata = freezed,
    Object? aud = null,
    Object? confirmationSentAt = freezed,
    Object? recoverySentAt = freezed,
    Object? emailChangeSentAt = freezed,
    Object? newEmail = freezed,
    Object? invitedAt = freezed,
    Object? actionLink = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? createdAt = null,
    Object? confirmedAt = freezed,
    Object? phoneConfirmedAt = freezed,
    Object? lastSignInAt = freezed,
    Object? emailConfirmedAt = freezed,
    Object? role = freezed,
    Object? updatedAt = freezed,
    Object? identities = freezed,
    Object? factors = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appMetadata: null == appMetadata
          ? _value.appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      userMetadata: freezed == userMetadata
          ? _value.userMetadata
          : userMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      aud: null == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String,
      confirmationSentAt: freezed == confirmationSentAt
          ? _value.confirmationSentAt
          : confirmationSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      recoverySentAt: freezed == recoverySentAt
          ? _value.recoverySentAt
          : recoverySentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      emailChangeSentAt: freezed == emailChangeSentAt
          ? _value.emailChangeSentAt
          : emailChangeSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      newEmail: freezed == newEmail
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedAt: freezed == invitedAt
          ? _value.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      actionLink: freezed == actionLink
          ? _value.actionLink
          : actionLink // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedAt: freezed == confirmedAt
          ? _value.confirmedAt
          : confirmedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneConfirmedAt: freezed == phoneConfirmedAt
          ? _value.phoneConfirmedAt
          : phoneConfirmedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSignInAt: freezed == lastSignInAt
          ? _value.lastSignInAt
          : lastSignInAt // ignore: cast_nullable_to_non_nullable
              as String?,
      emailConfirmedAt: freezed == emailConfirmedAt
          ? _value.emailConfirmedAt
          : emailConfirmedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      identities: freezed == identities
          ? _value.identities
          : identities // ignore: cast_nullable_to_non_nullable
              as List<AppUserIdentity>?,
      factors: freezed == factors
          ? _value.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as List<Factor>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUserImplCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUserImplCopyWith(
          _$AppUserImpl value, $Res Function(_$AppUserImpl) then) =
      __$$AppUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Map<String, dynamic> appMetadata,
      Map<String, dynamic>? userMetadata,
      String aud,
      String? confirmationSentAt,
      String? recoverySentAt,
      String? emailChangeSentAt,
      String? newEmail,
      String? invitedAt,
      String? actionLink,
      String? email,
      String? phone,
      String createdAt,
      String? confirmedAt,
      String? phoneConfirmedAt,
      String? lastSignInAt,
      String? emailConfirmedAt,
      String? role,
      String? updatedAt,
      List<AppUserIdentity>? identities,
      List<Factor>? factors});
}

/// @nodoc
class __$$AppUserImplCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$AppUserImpl>
    implements _$$AppUserImplCopyWith<$Res> {
  __$$AppUserImplCopyWithImpl(
      _$AppUserImpl _value, $Res Function(_$AppUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appMetadata = null,
    Object? userMetadata = freezed,
    Object? aud = null,
    Object? confirmationSentAt = freezed,
    Object? recoverySentAt = freezed,
    Object? emailChangeSentAt = freezed,
    Object? newEmail = freezed,
    Object? invitedAt = freezed,
    Object? actionLink = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? createdAt = null,
    Object? confirmedAt = freezed,
    Object? phoneConfirmedAt = freezed,
    Object? lastSignInAt = freezed,
    Object? emailConfirmedAt = freezed,
    Object? role = freezed,
    Object? updatedAt = freezed,
    Object? identities = freezed,
    Object? factors = freezed,
  }) {
    return _then(_$AppUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appMetadata: null == appMetadata
          ? _value._appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      userMetadata: freezed == userMetadata
          ? _value._userMetadata
          : userMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      aud: null == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String,
      confirmationSentAt: freezed == confirmationSentAt
          ? _value.confirmationSentAt
          : confirmationSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      recoverySentAt: freezed == recoverySentAt
          ? _value.recoverySentAt
          : recoverySentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      emailChangeSentAt: freezed == emailChangeSentAt
          ? _value.emailChangeSentAt
          : emailChangeSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      newEmail: freezed == newEmail
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedAt: freezed == invitedAt
          ? _value.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      actionLink: freezed == actionLink
          ? _value.actionLink
          : actionLink // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedAt: freezed == confirmedAt
          ? _value.confirmedAt
          : confirmedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneConfirmedAt: freezed == phoneConfirmedAt
          ? _value.phoneConfirmedAt
          : phoneConfirmedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSignInAt: freezed == lastSignInAt
          ? _value.lastSignInAt
          : lastSignInAt // ignore: cast_nullable_to_non_nullable
              as String?,
      emailConfirmedAt: freezed == emailConfirmedAt
          ? _value.emailConfirmedAt
          : emailConfirmedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      identities: freezed == identities
          ? _value._identities
          : identities // ignore: cast_nullable_to_non_nullable
              as List<AppUserIdentity>?,
      factors: freezed == factors
          ? _value._factors
          : factors // ignore: cast_nullable_to_non_nullable
              as List<Factor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUserImpl implements _AppUser {
  const _$AppUserImpl(
      {required this.id,
      required final Map<String, dynamic> appMetadata,
      final Map<String, dynamic>? userMetadata,
      required this.aud,
      this.confirmationSentAt,
      this.recoverySentAt,
      this.emailChangeSentAt,
      this.newEmail,
      this.invitedAt,
      this.actionLink,
      this.email,
      this.phone,
      required this.createdAt,
      this.confirmedAt,
      this.phoneConfirmedAt,
      this.lastSignInAt,
      this.emailConfirmedAt,
      this.role,
      this.updatedAt,
      final List<AppUserIdentity>? identities,
      final List<Factor>? factors})
      : _appMetadata = appMetadata,
        _userMetadata = userMetadata,
        _identities = identities,
        _factors = factors;

  factory _$AppUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUserImplFromJson(json);

  @override
  final String id;
  final Map<String, dynamic> _appMetadata;
  @override
  Map<String, dynamic> get appMetadata {
    if (_appMetadata is EqualUnmodifiableMapView) return _appMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_appMetadata);
  }

  final Map<String, dynamic>? _userMetadata;
  @override
  Map<String, dynamic>? get userMetadata {
    final value = _userMetadata;
    if (value == null) return null;
    if (_userMetadata is EqualUnmodifiableMapView) return _userMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String aud;
  @override
  final String? confirmationSentAt;
  @override
  final String? recoverySentAt;
  @override
  final String? emailChangeSentAt;
  @override
  final String? newEmail;
  @override
  final String? invitedAt;
  @override
  final String? actionLink;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String createdAt;
  @override
  final String? confirmedAt;
  @override
  final String? phoneConfirmedAt;
  @override
  final String? lastSignInAt;
  @override
  final String? emailConfirmedAt;
  @override
  final String? role;
  @override
  final String? updatedAt;
  final List<AppUserIdentity>? _identities;
  @override
  List<AppUserIdentity>? get identities {
    final value = _identities;
    if (value == null) return null;
    if (_identities is EqualUnmodifiableListView) return _identities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Factor>? _factors;
  @override
  List<Factor>? get factors {
    final value = _factors;
    if (value == null) return null;
    if (_factors is EqualUnmodifiableListView) return _factors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppUser(id: $id, appMetadata: $appMetadata, userMetadata: $userMetadata, aud: $aud, confirmationSentAt: $confirmationSentAt, recoverySentAt: $recoverySentAt, emailChangeSentAt: $emailChangeSentAt, newEmail: $newEmail, invitedAt: $invitedAt, actionLink: $actionLink, email: $email, phone: $phone, createdAt: $createdAt, confirmedAt: $confirmedAt, phoneConfirmedAt: $phoneConfirmedAt, lastSignInAt: $lastSignInAt, emailConfirmedAt: $emailConfirmedAt, role: $role, updatedAt: $updatedAt, identities: $identities, factors: $factors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._appMetadata, _appMetadata) &&
            const DeepCollectionEquality()
                .equals(other._userMetadata, _userMetadata) &&
            (identical(other.aud, aud) || other.aud == aud) &&
            (identical(other.confirmationSentAt, confirmationSentAt) ||
                other.confirmationSentAt == confirmationSentAt) &&
            (identical(other.recoverySentAt, recoverySentAt) ||
                other.recoverySentAt == recoverySentAt) &&
            (identical(other.emailChangeSentAt, emailChangeSentAt) ||
                other.emailChangeSentAt == emailChangeSentAt) &&
            (identical(other.newEmail, newEmail) ||
                other.newEmail == newEmail) &&
            (identical(other.invitedAt, invitedAt) ||
                other.invitedAt == invitedAt) &&
            (identical(other.actionLink, actionLink) ||
                other.actionLink == actionLink) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.confirmedAt, confirmedAt) ||
                other.confirmedAt == confirmedAt) &&
            (identical(other.phoneConfirmedAt, phoneConfirmedAt) ||
                other.phoneConfirmedAt == phoneConfirmedAt) &&
            (identical(other.lastSignInAt, lastSignInAt) ||
                other.lastSignInAt == lastSignInAt) &&
            (identical(other.emailConfirmedAt, emailConfirmedAt) ||
                other.emailConfirmedAt == emailConfirmedAt) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._identities, _identities) &&
            const DeepCollectionEquality().equals(other._factors, _factors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_appMetadata),
        const DeepCollectionEquality().hash(_userMetadata),
        aud,
        confirmationSentAt,
        recoverySentAt,
        emailChangeSentAt,
        newEmail,
        invitedAt,
        actionLink,
        email,
        phone,
        createdAt,
        confirmedAt,
        phoneConfirmedAt,
        lastSignInAt,
        emailConfirmedAt,
        role,
        updatedAt,
        const DeepCollectionEquality().hash(_identities),
        const DeepCollectionEquality().hash(_factors)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      __$$AppUserImplCopyWithImpl<_$AppUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUserImplToJson(
      this,
    );
  }
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {required final String id,
      required final Map<String, dynamic> appMetadata,
      final Map<String, dynamic>? userMetadata,
      required final String aud,
      final String? confirmationSentAt,
      final String? recoverySentAt,
      final String? emailChangeSentAt,
      final String? newEmail,
      final String? invitedAt,
      final String? actionLink,
      final String? email,
      final String? phone,
      required final String createdAt,
      final String? confirmedAt,
      final String? phoneConfirmedAt,
      final String? lastSignInAt,
      final String? emailConfirmedAt,
      final String? role,
      final String? updatedAt,
      final List<AppUserIdentity>? identities,
      final List<Factor>? factors}) = _$AppUserImpl;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$AppUserImpl.fromJson;

  @override
  String get id;
  @override
  Map<String, dynamic> get appMetadata;
  @override
  Map<String, dynamic>? get userMetadata;
  @override
  String get aud;
  @override
  String? get confirmationSentAt;
  @override
  String? get recoverySentAt;
  @override
  String? get emailChangeSentAt;
  @override
  String? get newEmail;
  @override
  String? get invitedAt;
  @override
  String? get actionLink;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String get createdAt;
  @override
  String? get confirmedAt;
  @override
  String? get phoneConfirmedAt;
  @override
  String? get lastSignInAt;
  @override
  String? get emailConfirmedAt;
  @override
  String? get role;
  @override
  String? get updatedAt;
  @override
  List<AppUserIdentity>? get identities;
  @override
  List<Factor>? get factors;
  @override
  @JsonKey(ignore: true)
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppUserIdentity _$AppUserIdentityFromJson(Map<String, dynamic> json) {
  return _AppUserIdentity.fromJson(json);
}

/// @nodoc
mixin _$AppUserIdentity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get identityData => throw _privateConstructorUsedError;
  String get identityId => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get lastSignInAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserIdentityCopyWith<AppUserIdentity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserIdentityCopyWith<$Res> {
  factory $AppUserIdentityCopyWith(
          AppUserIdentity value, $Res Function(AppUserIdentity) then) =
      _$AppUserIdentityCopyWithImpl<$Res, AppUserIdentity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      Map<String, dynamic>? identityData,
      String identityId,
      String provider,
      String? createdAt,
      String? lastSignInAt,
      String? updatedAt});
}

/// @nodoc
class _$AppUserIdentityCopyWithImpl<$Res, $Val extends AppUserIdentity>
    implements $AppUserIdentityCopyWith<$Res> {
  _$AppUserIdentityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? identityData = freezed,
    Object? identityId = null,
    Object? provider = null,
    Object? createdAt = freezed,
    Object? lastSignInAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      identityData: freezed == identityData
          ? _value.identityData
          : identityData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      identityId: null == identityId
          ? _value.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSignInAt: freezed == lastSignInAt
          ? _value.lastSignInAt
          : lastSignInAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUserIdentityImplCopyWith<$Res>
    implements $AppUserIdentityCopyWith<$Res> {
  factory _$$AppUserIdentityImplCopyWith(_$AppUserIdentityImpl value,
          $Res Function(_$AppUserIdentityImpl) then) =
      __$$AppUserIdentityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      Map<String, dynamic>? identityData,
      String identityId,
      String provider,
      String? createdAt,
      String? lastSignInAt,
      String? updatedAt});
}

/// @nodoc
class __$$AppUserIdentityImplCopyWithImpl<$Res>
    extends _$AppUserIdentityCopyWithImpl<$Res, _$AppUserIdentityImpl>
    implements _$$AppUserIdentityImplCopyWith<$Res> {
  __$$AppUserIdentityImplCopyWithImpl(
      _$AppUserIdentityImpl _value, $Res Function(_$AppUserIdentityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? identityData = freezed,
    Object? identityId = null,
    Object? provider = null,
    Object? createdAt = freezed,
    Object? lastSignInAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AppUserIdentityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      identityData: freezed == identityData
          ? _value._identityData
          : identityData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      identityId: null == identityId
          ? _value.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSignInAt: freezed == lastSignInAt
          ? _value.lastSignInAt
          : lastSignInAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUserIdentityImpl implements _AppUserIdentity {
  const _$AppUserIdentityImpl(
      {required this.id,
      required this.userId,
      final Map<String, dynamic>? identityData,
      required this.identityId,
      required this.provider,
      this.createdAt,
      this.lastSignInAt,
      this.updatedAt})
      : _identityData = identityData;

  factory _$AppUserIdentityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUserIdentityImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  final Map<String, dynamic>? _identityData;
  @override
  Map<String, dynamic>? get identityData {
    final value = _identityData;
    if (value == null) return null;
    if (_identityData is EqualUnmodifiableMapView) return _identityData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String identityId;
  @override
  final String provider;
  @override
  final String? createdAt;
  @override
  final String? lastSignInAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'AppUserIdentity(id: $id, userId: $userId, identityData: $identityData, identityId: $identityId, provider: $provider, createdAt: $createdAt, lastSignInAt: $lastSignInAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserIdentityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._identityData, _identityData) &&
            (identical(other.identityId, identityId) ||
                other.identityId == identityId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastSignInAt, lastSignInAt) ||
                other.lastSignInAt == lastSignInAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      const DeepCollectionEquality().hash(_identityData),
      identityId,
      provider,
      createdAt,
      lastSignInAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserIdentityImplCopyWith<_$AppUserIdentityImpl> get copyWith =>
      __$$AppUserIdentityImplCopyWithImpl<_$AppUserIdentityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUserIdentityImplToJson(
      this,
    );
  }
}

abstract class _AppUserIdentity implements AppUserIdentity {
  const factory _AppUserIdentity(
      {required final String id,
      required final String userId,
      final Map<String, dynamic>? identityData,
      required final String identityId,
      required final String provider,
      final String? createdAt,
      final String? lastSignInAt,
      final String? updatedAt}) = _$AppUserIdentityImpl;

  factory _AppUserIdentity.fromJson(Map<String, dynamic> json) =
      _$AppUserIdentityImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  Map<String, dynamic>? get identityData;
  @override
  String get identityId;
  @override
  String get provider;
  @override
  String? get createdAt;
  @override
  String? get lastSignInAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AppUserIdentityImplCopyWith<_$AppUserIdentityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Factor _$FactorFromJson(Map<String, dynamic> json) {
  return _Factor.fromJson(json);
}

/// @nodoc
mixin _$Factor {
  String get id => throw _privateConstructorUsedError;
  String? get friendlyName => throw _privateConstructorUsedError;
  FactorType get factorType => throw _privateConstructorUsedError;
  FactorStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FactorCopyWith<Factor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactorCopyWith<$Res> {
  factory $FactorCopyWith(Factor value, $Res Function(Factor) then) =
      _$FactorCopyWithImpl<$Res, Factor>;
  @useResult
  $Res call(
      {String id,
      String? friendlyName,
      FactorType factorType,
      FactorStatus status,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$FactorCopyWithImpl<$Res, $Val extends Factor>
    implements $FactorCopyWith<$Res> {
  _$FactorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? friendlyName = freezed,
    Object? factorType = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      friendlyName: freezed == friendlyName
          ? _value.friendlyName
          : friendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      factorType: null == factorType
          ? _value.factorType
          : factorType // ignore: cast_nullable_to_non_nullable
              as FactorType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FactorStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FactorImplCopyWith<$Res> implements $FactorCopyWith<$Res> {
  factory _$$FactorImplCopyWith(
          _$FactorImpl value, $Res Function(_$FactorImpl) then) =
      __$$FactorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? friendlyName,
      FactorType factorType,
      FactorStatus status,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$FactorImplCopyWithImpl<$Res>
    extends _$FactorCopyWithImpl<$Res, _$FactorImpl>
    implements _$$FactorImplCopyWith<$Res> {
  __$$FactorImplCopyWithImpl(
      _$FactorImpl _value, $Res Function(_$FactorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? friendlyName = freezed,
    Object? factorType = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$FactorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      friendlyName: freezed == friendlyName
          ? _value.friendlyName
          : friendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      factorType: null == factorType
          ? _value.factorType
          : factorType // ignore: cast_nullable_to_non_nullable
              as FactorType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FactorStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FactorImpl implements _Factor {
  const _$FactorImpl(
      {required this.id,
      this.friendlyName,
      required this.factorType,
      required this.status,
      required this.createdAt,
      required this.updatedAt});

  factory _$FactorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FactorImplFromJson(json);

  @override
  final String id;
  @override
  final String? friendlyName;
  @override
  final FactorType factorType;
  @override
  final FactorStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Factor(id: $id, friendlyName: $friendlyName, factorType: $factorType, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.friendlyName, friendlyName) ||
                other.friendlyName == friendlyName) &&
            (identical(other.factorType, factorType) ||
                other.factorType == factorType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, friendlyName, factorType, status, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FactorImplCopyWith<_$FactorImpl> get copyWith =>
      __$$FactorImplCopyWithImpl<_$FactorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FactorImplToJson(
      this,
    );
  }
}

abstract class _Factor implements Factor {
  const factory _Factor(
      {required final String id,
      final String? friendlyName,
      required final FactorType factorType,
      required final FactorStatus status,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$FactorImpl;

  factory _Factor.fromJson(Map<String, dynamic> json) = _$FactorImpl.fromJson;

  @override
  String get id;
  @override
  String? get friendlyName;
  @override
  FactorType get factorType;
  @override
  FactorStatus get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FactorImplCopyWith<_$FactorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
