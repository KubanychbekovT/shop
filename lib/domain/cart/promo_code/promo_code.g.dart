// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromoCodeImpl _$$PromoCodeImplFromJson(Map<String, dynamic> json) =>
    _$PromoCodeImpl(
      id: json['_id'] as String,
      currentNumberOfUses: json['already_used'] as int,
      maxNumberOfUses: json['number_of_uses'] as int,
      code: json['code'] as String,
      discount: (json['discount'] as num).toDouble(),
      endDate: json['endDate'] as String,
      fixedSum: (json['fixed_sum'] as num).toDouble(),
      minSum: (json['min_sum'] as num).toDouble(),
      name: json['name'] as String,
      startDate: json['startDate'] as String,
    );

Map<String, dynamic> _$$PromoCodeImplToJson(_$PromoCodeImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'already_used': instance.currentNumberOfUses,
      'number_of_uses': instance.maxNumberOfUses,
      'code': instance.code,
      'discount': instance.discount,
      'endDate': instance.endDate,
      'fixed_sum': instance.fixedSum,
      'min_sum': instance.minSum,
      'name': instance.name,
      'startDate': instance.startDate,
    };
