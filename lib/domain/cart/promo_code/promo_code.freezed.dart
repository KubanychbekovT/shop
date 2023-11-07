// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromoCode _$PromoCodeFromJson(Map<String, dynamic> json) {
  return _PromoCode.fromJson(json);
}

/// @nodoc
mixin _$PromoCode {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "already_used")
  int get currentNumberOfUses => throw _privateConstructorUsedError;
  @JsonKey(name: "number_of_uses")
  int get maxNumberOfUses => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "fixed_sum")
  double get fixedSum => throw _privateConstructorUsedError;
  @JsonKey(name: "min_sum")
  double get minSum => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoCodeCopyWith<PromoCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoCodeCopyWith<$Res> {
  factory $PromoCodeCopyWith(PromoCode value, $Res Function(PromoCode) then) =
      _$PromoCodeCopyWithImpl<$Res, PromoCode>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "already_used") int currentNumberOfUses,
      @JsonKey(name: "number_of_uses") int maxNumberOfUses,
      String code,
      double discount,
      String endDate,
      @JsonKey(name: "fixed_sum") double fixedSum,
      @JsonKey(name: "min_sum") double minSum,
      String name,
      String startDate});
}

/// @nodoc
class _$PromoCodeCopyWithImpl<$Res, $Val extends PromoCode>
    implements $PromoCodeCopyWith<$Res> {
  _$PromoCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentNumberOfUses = null,
    Object? maxNumberOfUses = null,
    Object? code = null,
    Object? discount = null,
    Object? endDate = null,
    Object? fixedSum = null,
    Object? minSum = null,
    Object? name = null,
    Object? startDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentNumberOfUses: null == currentNumberOfUses
          ? _value.currentNumberOfUses
          : currentNumberOfUses // ignore: cast_nullable_to_non_nullable
              as int,
      maxNumberOfUses: null == maxNumberOfUses
          ? _value.maxNumberOfUses
          : maxNumberOfUses // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      fixedSum: null == fixedSum
          ? _value.fixedSum
          : fixedSum // ignore: cast_nullable_to_non_nullable
              as double,
      minSum: null == minSum
          ? _value.minSum
          : minSum // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromoCodeImplCopyWith<$Res>
    implements $PromoCodeCopyWith<$Res> {
  factory _$$PromoCodeImplCopyWith(
          _$PromoCodeImpl value, $Res Function(_$PromoCodeImpl) then) =
      __$$PromoCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "already_used") int currentNumberOfUses,
      @JsonKey(name: "number_of_uses") int maxNumberOfUses,
      String code,
      double discount,
      String endDate,
      @JsonKey(name: "fixed_sum") double fixedSum,
      @JsonKey(name: "min_sum") double minSum,
      String name,
      String startDate});
}

/// @nodoc
class __$$PromoCodeImplCopyWithImpl<$Res>
    extends _$PromoCodeCopyWithImpl<$Res, _$PromoCodeImpl>
    implements _$$PromoCodeImplCopyWith<$Res> {
  __$$PromoCodeImplCopyWithImpl(
      _$PromoCodeImpl _value, $Res Function(_$PromoCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentNumberOfUses = null,
    Object? maxNumberOfUses = null,
    Object? code = null,
    Object? discount = null,
    Object? endDate = null,
    Object? fixedSum = null,
    Object? minSum = null,
    Object? name = null,
    Object? startDate = null,
  }) {
    return _then(_$PromoCodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentNumberOfUses: null == currentNumberOfUses
          ? _value.currentNumberOfUses
          : currentNumberOfUses // ignore: cast_nullable_to_non_nullable
              as int,
      maxNumberOfUses: null == maxNumberOfUses
          ? _value.maxNumberOfUses
          : maxNumberOfUses // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      fixedSum: null == fixedSum
          ? _value.fixedSum
          : fixedSum // ignore: cast_nullable_to_non_nullable
              as double,
      minSum: null == minSum
          ? _value.minSum
          : minSum // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromoCodeImpl implements _PromoCode {
  _$PromoCodeImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "already_used") required this.currentNumberOfUses,
      @JsonKey(name: "number_of_uses") required this.maxNumberOfUses,
      required this.code,
      required this.discount,
      required this.endDate,
      @JsonKey(name: "fixed_sum") required this.fixedSum,
      @JsonKey(name: "min_sum") required this.minSum,
      required this.name,
      required this.startDate});

  factory _$PromoCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromoCodeImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "already_used")
  final int currentNumberOfUses;
  @override
  @JsonKey(name: "number_of_uses")
  final int maxNumberOfUses;
  @override
  final String code;
  @override
  final double discount;
  @override
  final String endDate;
  @override
  @JsonKey(name: "fixed_sum")
  final double fixedSum;
  @override
  @JsonKey(name: "min_sum")
  final double minSum;
  @override
  final String name;
  @override
  final String startDate;

  @override
  String toString() {
    return 'PromoCode(id: $id, currentNumberOfUses: $currentNumberOfUses, maxNumberOfUses: $maxNumberOfUses, code: $code, discount: $discount, endDate: $endDate, fixedSum: $fixedSum, minSum: $minSum, name: $name, startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromoCodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentNumberOfUses, currentNumberOfUses) ||
                other.currentNumberOfUses == currentNumberOfUses) &&
            (identical(other.maxNumberOfUses, maxNumberOfUses) ||
                other.maxNumberOfUses == maxNumberOfUses) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.fixedSum, fixedSum) ||
                other.fixedSum == fixedSum) &&
            (identical(other.minSum, minSum) || other.minSum == minSum) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      currentNumberOfUses,
      maxNumberOfUses,
      code,
      discount,
      endDate,
      fixedSum,
      minSum,
      name,
      startDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromoCodeImplCopyWith<_$PromoCodeImpl> get copyWith =>
      __$$PromoCodeImplCopyWithImpl<_$PromoCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromoCodeImplToJson(
      this,
    );
  }
}

abstract class _PromoCode implements PromoCode {
  factory _PromoCode(
      {@JsonKey(name: "_id") required final String id,
      @JsonKey(name: "already_used") required final int currentNumberOfUses,
      @JsonKey(name: "number_of_uses") required final int maxNumberOfUses,
      required final String code,
      required final double discount,
      required final String endDate,
      @JsonKey(name: "fixed_sum") required final double fixedSum,
      @JsonKey(name: "min_sum") required final double minSum,
      required final String name,
      required final String startDate}) = _$PromoCodeImpl;

  factory _PromoCode.fromJson(Map<String, dynamic> json) =
      _$PromoCodeImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "already_used")
  int get currentNumberOfUses;
  @override
  @JsonKey(name: "number_of_uses")
  int get maxNumberOfUses;
  @override
  String get code;
  @override
  double get discount;
  @override
  String get endDate;
  @override
  @JsonKey(name: "fixed_sum")
  double get fixedSum;
  @override
  @JsonKey(name: "min_sum")
  double get minSum;
  @override
  String get name;
  @override
  String get startDate;
  @override
  @JsonKey(ignore: true)
  _$$PromoCodeImplCopyWith<_$PromoCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
