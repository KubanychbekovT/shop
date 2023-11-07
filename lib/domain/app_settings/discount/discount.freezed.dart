// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Discount _$DiscountFromJson(Map<String, dynamic> json) {
  return _Discount.fromJson(json);
}

/// @nodoc
mixin _$Discount {
  bool get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_percentage")
  int get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "min_sum_of_purchases")
  int get minSumOfPurchases => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountCopyWith<Discount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCopyWith<$Res> {
  factory $DiscountCopyWith(Discount value, $Res Function(Discount) then) =
      _$DiscountCopyWithImpl<$Res, Discount>;
  @useResult
  $Res call(
      {bool status,
      String name,
      @JsonKey(name: "discount_percentage") int discountPercentage,
      @JsonKey(name: "min_sum_of_purchases") int minSumOfPurchases});
}

/// @nodoc
class _$DiscountCopyWithImpl<$Res, $Val extends Discount>
    implements $DiscountCopyWith<$Res> {
  _$DiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? discountPercentage = null,
    Object? minSumOfPurchases = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      minSumOfPurchases: null == minSumOfPurchases
          ? _value.minSumOfPurchases
          : minSumOfPurchases // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountImplCopyWith<$Res>
    implements $DiscountCopyWith<$Res> {
  factory _$$DiscountImplCopyWith(
          _$DiscountImpl value, $Res Function(_$DiscountImpl) then) =
      __$$DiscountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      String name,
      @JsonKey(name: "discount_percentage") int discountPercentage,
      @JsonKey(name: "min_sum_of_purchases") int minSumOfPurchases});
}

/// @nodoc
class __$$DiscountImplCopyWithImpl<$Res>
    extends _$DiscountCopyWithImpl<$Res, _$DiscountImpl>
    implements _$$DiscountImplCopyWith<$Res> {
  __$$DiscountImplCopyWithImpl(
      _$DiscountImpl _value, $Res Function(_$DiscountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? discountPercentage = null,
    Object? minSumOfPurchases = null,
  }) {
    return _then(_$DiscountImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      minSumOfPurchases: null == minSumOfPurchases
          ? _value.minSumOfPurchases
          : minSumOfPurchases // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountImpl implements _Discount {
  _$DiscountImpl(
      {required this.status,
      required this.name,
      @JsonKey(name: "discount_percentage") required this.discountPercentage,
      @JsonKey(name: "min_sum_of_purchases") required this.minSumOfPurchases});

  factory _$DiscountImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountImplFromJson(json);

  @override
  final bool status;
  @override
  final String name;
  @override
  @JsonKey(name: "discount_percentage")
  final int discountPercentage;
  @override
  @JsonKey(name: "min_sum_of_purchases")
  final int minSumOfPurchases;

  @override
  String toString() {
    return 'Discount(status: $status, name: $name, discountPercentage: $discountPercentage, minSumOfPurchases: $minSumOfPurchases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.minSumOfPurchases, minSumOfPurchases) ||
                other.minSumOfPurchases == minSumOfPurchases));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, name, discountPercentage, minSumOfPurchases);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountImplCopyWith<_$DiscountImpl> get copyWith =>
      __$$DiscountImplCopyWithImpl<_$DiscountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountImplToJson(
      this,
    );
  }
}

abstract class _Discount implements Discount {
  factory _Discount(
      {required final bool status,
      required final String name,
      @JsonKey(name: "discount_percentage")
      required final int discountPercentage,
      @JsonKey(name: "min_sum_of_purchases")
      required final int minSumOfPurchases}) = _$DiscountImpl;

  factory _Discount.fromJson(Map<String, dynamic> json) =
      _$DiscountImpl.fromJson;

  @override
  bool get status;
  @override
  String get name;
  @override
  @JsonKey(name: "discount_percentage")
  int get discountPercentage;
  @override
  @JsonKey(name: "min_sum_of_purchases")
  int get minSumOfPurchases;
  @override
  @JsonKey(ignore: true)
  _$$DiscountImplCopyWith<_$DiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
