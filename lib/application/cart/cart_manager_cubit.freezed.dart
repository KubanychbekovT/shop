// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartManagerState {
  List<CartItem> get cartItemList => throw _privateConstructorUsedError;
  PromoCode? get promoCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartManagerStateCopyWith<CartManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartManagerStateCopyWith<$Res> {
  factory $CartManagerStateCopyWith(
          CartManagerState value, $Res Function(CartManagerState) then) =
      _$CartManagerStateCopyWithImpl<$Res, CartManagerState>;
  @useResult
  $Res call({List<CartItem> cartItemList, PromoCode? promoCode});

  $PromoCodeCopyWith<$Res>? get promoCode;
}

/// @nodoc
class _$CartManagerStateCopyWithImpl<$Res, $Val extends CartManagerState>
    implements $CartManagerStateCopyWith<$Res> {
  _$CartManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItemList = null,
    Object? promoCode = freezed,
  }) {
    return _then(_value.copyWith(
      cartItemList: null == cartItemList
          ? _value.cartItemList
          : cartItemList // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as PromoCode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PromoCodeCopyWith<$Res>? get promoCode {
    if (_value.promoCode == null) {
      return null;
    }

    return $PromoCodeCopyWith<$Res>(_value.promoCode!, (value) {
      return _then(_value.copyWith(promoCode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartManagerStateImplCopyWith<$Res>
    implements $CartManagerStateCopyWith<$Res> {
  factory _$$CartManagerStateImplCopyWith(_$CartManagerStateImpl value,
          $Res Function(_$CartManagerStateImpl) then) =
      __$$CartManagerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartItem> cartItemList, PromoCode? promoCode});

  @override
  $PromoCodeCopyWith<$Res>? get promoCode;
}

/// @nodoc
class __$$CartManagerStateImplCopyWithImpl<$Res>
    extends _$CartManagerStateCopyWithImpl<$Res, _$CartManagerStateImpl>
    implements _$$CartManagerStateImplCopyWith<$Res> {
  __$$CartManagerStateImplCopyWithImpl(_$CartManagerStateImpl _value,
      $Res Function(_$CartManagerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItemList = null,
    Object? promoCode = freezed,
  }) {
    return _then(_$CartManagerStateImpl(
      null == cartItemList
          ? _value._cartItemList
          : cartItemList // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as PromoCode?,
    ));
  }
}

/// @nodoc

class _$CartManagerStateImpl implements _CartManagerState {
  const _$CartManagerStateImpl(
      final List<CartItem> cartItemList, this.promoCode)
      : _cartItemList = cartItemList;

  final List<CartItem> _cartItemList;
  @override
  List<CartItem> get cartItemList {
    if (_cartItemList is EqualUnmodifiableListView) return _cartItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItemList);
  }

  @override
  final PromoCode? promoCode;

  @override
  String toString() {
    return 'CartManagerState(cartItemList: $cartItemList, promoCode: $promoCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartManagerStateImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItemList, _cartItemList) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_cartItemList), promoCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartManagerStateImplCopyWith<_$CartManagerStateImpl> get copyWith =>
      __$$CartManagerStateImplCopyWithImpl<_$CartManagerStateImpl>(
          this, _$identity);
}

abstract class _CartManagerState implements CartManagerState {
  const factory _CartManagerState(
          final List<CartItem> cartItemList, final PromoCode? promoCode) =
      _$CartManagerStateImpl;

  @override
  List<CartItem> get cartItemList;
  @override
  PromoCode? get promoCode;
  @override
  @JsonKey(ignore: true)
  _$$CartManagerStateImplCopyWith<_$CartManagerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
