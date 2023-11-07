// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      imgArray:
          (json['imgArray'] as List<dynamic>).map((e) => e as String).toList(),
      active: json['active'] as bool,
      quantity: json['quantity'] as int,
      price: json['price'] as int,
      promoPrice: json['promoPrice'] as int,
      recommend: json['recommend'] as bool,
      id: json['_id'] as String,
      name: json['name'] as String,
      nameRu: json['name_ru'] as String,
      description: json['description'] as String,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'imgArray': instance.imgArray,
      'active': instance.active,
      'quantity': instance.quantity,
      'price': instance.price,
      'promoPrice': instance.promoPrice,
      'recommend': instance.recommend,
      '_id': instance.id,
      'name': instance.name,
      'name_ru': instance.nameRu,
      'description': instance.description,
      'category': instance.category,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };
