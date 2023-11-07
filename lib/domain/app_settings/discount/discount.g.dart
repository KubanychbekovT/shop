// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountImpl _$$DiscountImplFromJson(Map<String, dynamic> json) =>
    _$DiscountImpl(
      status: json['status'] as bool,
      name: json['name'] as String,
      discountPercentage: json['discount_percentage'] as int,
      minSumOfPurchases: json['min_sum_of_purchases'] as int,
    );

Map<String, dynamic> _$$DiscountImplToJson(_$DiscountImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'name': instance.name,
      'discount_percentage': instance.discountPercentage,
      'min_sum_of_purchases': instance.minSumOfPurchases,
    };
