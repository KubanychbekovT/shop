// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryImpl _$$DeliveryImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryImpl(
      price: json['price'] as int,
      minPrice: json['minPrice'] as int,
      name: json['name'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$DeliveryImplToJson(_$DeliveryImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'minPrice': instance.minPrice,
      'name': instance.name,
      '_id': instance.id,
    };
