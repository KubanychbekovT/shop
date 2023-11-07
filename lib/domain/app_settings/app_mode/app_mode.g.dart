// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppModeImpl _$$AppModeImplFromJson(Map<String, dynamic> json) =>
    _$AppModeImpl(
      email: json['email'] as String?,
      currency: json['currency'] as String?,
      chat: json['chat'] as bool?,
      delivery: json['delivery'] as bool?,
      deliveryDescription: json['deliveryDescription'] as String?,
      catalogMode: json['catalogMode'] as bool?,
      foodMode: json['foodMode'] as bool?,
      whatsapp: json['whatsapp'] as String?,
      telegram: json['telegram'] as String?,
      facebook: json['facebook'] as String?,
      instagram: json['instagram'] as String?,
      website: json['website'] as String?,
      catalogStatus: json['catalogStatus'] as bool?,
    );

Map<String, dynamic> _$$AppModeImplToJson(_$AppModeImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'currency': instance.currency,
      'chat': instance.chat,
      'delivery': instance.delivery,
      'deliveryDescription': instance.deliveryDescription,
      'catalogMode': instance.catalogMode,
      'foodMode': instance.foodMode,
      'whatsapp': instance.whatsapp,
      'telegram': instance.telegram,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'website': instance.website,
      'catalogStatus': instance.catalogStatus,
    };
