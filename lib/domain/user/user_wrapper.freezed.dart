// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserWrapper _$UserWrapperFromJson(Map<String, dynamic> json) {
  return _UserWrapper.fromJson(json);
}

/// @nodoc
mixin _$UserWrapper {
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "object")
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWrapperCopyWith<UserWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWrapperCopyWith<$Res> {
  factory $UserWrapperCopyWith(
          UserWrapper value, $Res Function(UserWrapper) then) =
      _$UserWrapperCopyWithImpl<$Res, UserWrapper>;
  @useResult
  $Res call({int status, @JsonKey(name: "object") User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserWrapperCopyWithImpl<$Res, $Val extends UserWrapper>
    implements $UserWrapperCopyWith<$Res> {
  _$UserWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserWrapperImplCopyWith<$Res>
    implements $UserWrapperCopyWith<$Res> {
  factory _$$UserWrapperImplCopyWith(
          _$UserWrapperImpl value, $Res Function(_$UserWrapperImpl) then) =
      __$$UserWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, @JsonKey(name: "object") User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserWrapperImplCopyWithImpl<$Res>
    extends _$UserWrapperCopyWithImpl<$Res, _$UserWrapperImpl>
    implements _$$UserWrapperImplCopyWith<$Res> {
  __$$UserWrapperImplCopyWithImpl(
      _$UserWrapperImpl _value, $Res Function(_$UserWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
  }) {
    return _then(_$UserWrapperImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserWrapperImpl implements _UserWrapper {
  const _$UserWrapperImpl(
      {required this.status, @JsonKey(name: "object") required this.user});

  factory _$UserWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserWrapperImplFromJson(json);

  @override
  final int status;
  @override
  @JsonKey(name: "object")
  final User user;

  @override
  String toString() {
    return 'UserWrapper(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWrapperImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWrapperImplCopyWith<_$UserWrapperImpl> get copyWith =>
      __$$UserWrapperImplCopyWithImpl<_$UserWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserWrapperImplToJson(
      this,
    );
  }
}

abstract class _UserWrapper implements UserWrapper {
  const factory _UserWrapper(
      {required final int status,
      @JsonKey(name: "object") required final User user}) = _$UserWrapperImpl;

  factory _UserWrapper.fromJson(Map<String, dynamic> json) =
      _$UserWrapperImpl.fromJson;

  @override
  int get status;
  @override
  @JsonKey(name: "object")
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$UserWrapperImplCopyWith<_$UserWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
