// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileManagerState {
  User? get user => throw _privateConstructorUsedError;
  AppSettings? get appSettings => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileManagerStateCopyWith<ProfileManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileManagerStateCopyWith<$Res> {
  factory $ProfileManagerStateCopyWith(
          ProfileManagerState value, $Res Function(ProfileManagerState) then) =
      _$ProfileManagerStateCopyWithImpl<$Res, ProfileManagerState>;
  @useResult
  $Res call({User? user, AppSettings? appSettings, bool loading});

  $UserCopyWith<$Res>? get user;
  $AppSettingsCopyWith<$Res>? get appSettings;
}

/// @nodoc
class _$ProfileManagerStateCopyWithImpl<$Res, $Val extends ProfileManagerState>
    implements $ProfileManagerStateCopyWith<$Res> {
  _$ProfileManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? appSettings = freezed,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      appSettings: freezed == appSettings
          ? _value.appSettings
          : appSettings // ignore: cast_nullable_to_non_nullable
              as AppSettings?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppSettingsCopyWith<$Res>? get appSettings {
    if (_value.appSettings == null) {
      return null;
    }

    return $AppSettingsCopyWith<$Res>(_value.appSettings!, (value) {
      return _then(_value.copyWith(appSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileManagerStateImplCopyWith<$Res>
    implements $ProfileManagerStateCopyWith<$Res> {
  factory _$$ProfileManagerStateImplCopyWith(_$ProfileManagerStateImpl value,
          $Res Function(_$ProfileManagerStateImpl) then) =
      __$$ProfileManagerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, AppSettings? appSettings, bool loading});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $AppSettingsCopyWith<$Res>? get appSettings;
}

/// @nodoc
class __$$ProfileManagerStateImplCopyWithImpl<$Res>
    extends _$ProfileManagerStateCopyWithImpl<$Res, _$ProfileManagerStateImpl>
    implements _$$ProfileManagerStateImplCopyWith<$Res> {
  __$$ProfileManagerStateImplCopyWithImpl(_$ProfileManagerStateImpl _value,
      $Res Function(_$ProfileManagerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? appSettings = freezed,
    Object? loading = null,
  }) {
    return _then(_$ProfileManagerStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      appSettings: freezed == appSettings
          ? _value.appSettings
          : appSettings // ignore: cast_nullable_to_non_nullable
              as AppSettings?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProfileManagerStateImpl implements _ProfileManagerState {
  _$ProfileManagerStateImpl(
      {this.user, this.appSettings, required this.loading});

  @override
  final User? user;
  @override
  final AppSettings? appSettings;
  @override
  final bool loading;

  @override
  String toString() {
    return 'ProfileManagerState(user: $user, appSettings: $appSettings, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileManagerStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.appSettings, appSettings) ||
                other.appSettings == appSettings) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, appSettings, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileManagerStateImplCopyWith<_$ProfileManagerStateImpl> get copyWith =>
      __$$ProfileManagerStateImplCopyWithImpl<_$ProfileManagerStateImpl>(
          this, _$identity);
}

abstract class _ProfileManagerState implements ProfileManagerState {
  factory _ProfileManagerState(
      {final User? user,
      final AppSettings? appSettings,
      required final bool loading}) = _$ProfileManagerStateImpl;

  @override
  User? get user;
  @override
  AppSettings? get appSettings;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$ProfileManagerStateImplCopyWith<_$ProfileManagerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
