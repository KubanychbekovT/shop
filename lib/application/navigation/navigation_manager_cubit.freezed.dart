// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationManagerState {
  int get bottomNavigationSelectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationManagerStateCopyWith<NavigationManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationManagerStateCopyWith<$Res> {
  factory $NavigationManagerStateCopyWith(NavigationManagerState value,
          $Res Function(NavigationManagerState) then) =
      _$NavigationManagerStateCopyWithImpl<$Res, NavigationManagerState>;
  @useResult
  $Res call({int bottomNavigationSelectedIndex});
}

/// @nodoc
class _$NavigationManagerStateCopyWithImpl<$Res,
        $Val extends NavigationManagerState>
    implements $NavigationManagerStateCopyWith<$Res> {
  _$NavigationManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavigationSelectedIndex = null,
  }) {
    return _then(_value.copyWith(
      bottomNavigationSelectedIndex: null == bottomNavigationSelectedIndex
          ? _value.bottomNavigationSelectedIndex
          : bottomNavigationSelectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigationManagerStateImplCopyWith<$Res>
    implements $NavigationManagerStateCopyWith<$Res> {
  factory _$$NavigationManagerStateImplCopyWith(
          _$NavigationManagerStateImpl value,
          $Res Function(_$NavigationManagerStateImpl) then) =
      __$$NavigationManagerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bottomNavigationSelectedIndex});
}

/// @nodoc
class __$$NavigationManagerStateImplCopyWithImpl<$Res>
    extends _$NavigationManagerStateCopyWithImpl<$Res,
        _$NavigationManagerStateImpl>
    implements _$$NavigationManagerStateImplCopyWith<$Res> {
  __$$NavigationManagerStateImplCopyWithImpl(
      _$NavigationManagerStateImpl _value,
      $Res Function(_$NavigationManagerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavigationSelectedIndex = null,
  }) {
    return _then(_$NavigationManagerStateImpl(
      null == bottomNavigationSelectedIndex
          ? _value.bottomNavigationSelectedIndex
          : bottomNavigationSelectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NavigationManagerStateImpl implements _NavigationManagerState {
  const _$NavigationManagerStateImpl(this.bottomNavigationSelectedIndex);

  @override
  final int bottomNavigationSelectedIndex;

  @override
  String toString() {
    return 'NavigationManagerState(bottomNavigationSelectedIndex: $bottomNavigationSelectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationManagerStateImpl &&
            (identical(other.bottomNavigationSelectedIndex,
                    bottomNavigationSelectedIndex) ||
                other.bottomNavigationSelectedIndex ==
                    bottomNavigationSelectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bottomNavigationSelectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationManagerStateImplCopyWith<_$NavigationManagerStateImpl>
      get copyWith => __$$NavigationManagerStateImplCopyWithImpl<
          _$NavigationManagerStateImpl>(this, _$identity);
}

abstract class _NavigationManagerState implements NavigationManagerState {
  const factory _NavigationManagerState(
      final int bottomNavigationSelectedIndex) = _$NavigationManagerStateImpl;

  @override
  int get bottomNavigationSelectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$NavigationManagerStateImplCopyWith<_$NavigationManagerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
