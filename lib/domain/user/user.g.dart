// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      receivedBdPoints: json['receivedBdPoints'] as bool,
      expiredBdPoints: json['expiredBdPoints'] as bool,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      address: json['address'] as String?,
      balance: json['balance'] as int,
      points: json['points'] as int,
      messages: json['messages'] as List<dynamic>,
      news: json['news'] as List<dynamic>,
      fbId: json['fbId'] as String?,
      appleId: json['appleId'] as String?,
      googleId: json['googleId'] as String?,
      twitterId: json['twitterId'] as String?,
      gender: json['gender'] as String,
      qrCode: json['QRCode'] as String,
      promocodeIsUsed: json['promocodeIsUsed'] as bool,
      uniqueCode: json['uniqueCode'] as String?,
      customField0: json['customField0'] as String?,
      customField1: json['customField1'] as String?,
      customField2: json['customField2'] as String?,
      id: json['_id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      promocode: json['promocode'] as String,
      lastMessageAt: DateTime.parse(json['lastMessageAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      discount: json['discount'] as int,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'receivedBdPoints': instance.receivedBdPoints,
      'expiredBdPoints': instance.expiredBdPoints,
      'birthDate': instance.birthDate?.toIso8601String(),
      'address': instance.address,
      'balance': instance.balance,
      'points': instance.points,
      'messages': instance.messages,
      'news': instance.news,
      'fbId': instance.fbId,
      'appleId': instance.appleId,
      'googleId': instance.googleId,
      'twitterId': instance.twitterId,
      'gender': instance.gender,
      'QRCode': instance.qrCode,
      'promocodeIsUsed': instance.promocodeIsUsed,
      'uniqueCode': instance.uniqueCode,
      'customField0': instance.customField0,
      'customField1': instance.customField1,
      'customField2': instance.customField2,
      '_id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'password': instance.password,
      'promocode': instance.promocode,
      'lastMessageAt': instance.lastMessageAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'discount': instance.discount,
    };
