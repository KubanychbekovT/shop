import 'package:meta/meta.dart';
import 'dart:convert';

class User {
  final int status;
  final bool auth;
  final String msg;
  final String token;
  final String refreshToken;
  final Object object;

  User({
    required this.status,
    required this.auth,
    required this.msg,
    required this.token,
    required this.refreshToken,
    required this.object,
  });

  User copyWith({
    int? status,
    bool? auth,
    String? msg,
    String? token,
    String? refreshToken,
    Object? object,
  }) =>
      User(
        status: status ?? this.status,
        auth: auth ?? this.auth,
        msg: msg ?? this.msg,
        token: token ?? this.token,
        refreshToken: refreshToken ?? this.refreshToken,
        object: object ?? this.object,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    status: json["status"],
    auth: json["auth"],
    msg: json["msg"],
    token: json["token"],
    refreshToken: json["refresh_token"],
    object: Object.fromJson(json["object"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "auth": auth,
    "msg": msg,
    "token": token,
    "refresh_token": refreshToken,
    "object": object.toJson(),
  };
}

class Object {
  final bool receivedBdPoints;
  final bool expiredBdPoints;
  final dynamic birthDate;
  final String address;
  final int balance;
  final int points;
  final List<dynamic> messages;
  final List<dynamic> news;
  final String fbId;
  final String appleId;
  final String googleId;
  final String twitterId;
  final String gender;
  final String qrCode;
  final bool promocodeIsUsed;
  final String uniqueCode;
  final String customField0;
  final String customField1;
  final String customField2;
  final String id;
  final String name;
  final String phone;
  final String email;
  final String password;
  final String promocode;
  final DateTime lastMessageAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  Object({
    required this.receivedBdPoints,
    required this.expiredBdPoints,
    required this.birthDate,
    required this.address,
    required this.balance,
    required this.points,
    required this.messages,
    required this.news,
    required this.fbId,
    required this.appleId,
    required this.googleId,
    required this.twitterId,
    required this.gender,
    required this.qrCode,
    required this.promocodeIsUsed,
    required this.uniqueCode,
    required this.customField0,
    required this.customField1,
    required this.customField2,
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.promocode,
    required this.lastMessageAt,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  Object copyWith({
    bool? receivedBdPoints,
    bool? expiredBdPoints,
    dynamic birthDate,
    String? address,
    int? balance,
    int? points,
    List<dynamic>? messages,
    List<dynamic>? news,
    String? fbId,
    String? appleId,
    String? googleId,
    String? twitterId,
    String? gender,
    String? qrCode,
    bool? promocodeIsUsed,
    String? uniqueCode,
    String? customField0,
    String? customField1,
    String? customField2,
    String? id,
    String? name,
    String? phone,
    String? email,
    String? password,
    String? promocode,
    DateTime? lastMessageAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) =>
      Object(
        receivedBdPoints: receivedBdPoints ?? this.receivedBdPoints,
        expiredBdPoints: expiredBdPoints ?? this.expiredBdPoints,
        birthDate: birthDate ?? this.birthDate,
        address: address ?? this.address,
        balance: balance ?? this.balance,
        points: points ?? this.points,
        messages: messages ?? this.messages,
        news: news ?? this.news,
        fbId: fbId ?? this.fbId,
        appleId: appleId ?? this.appleId,
        googleId: googleId ?? this.googleId,
        twitterId: twitterId ?? this.twitterId,
        gender: gender ?? this.gender,
        qrCode: qrCode ?? this.qrCode,
        promocodeIsUsed: promocodeIsUsed ?? this.promocodeIsUsed,
        uniqueCode: uniqueCode ?? this.uniqueCode,
        customField0: customField0 ?? this.customField0,
        customField1: customField1 ?? this.customField1,
        customField2: customField2 ?? this.customField2,
        id: id ?? this.id,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        password: password ?? this.password,
        promocode: promocode ?? this.promocode,
        lastMessageAt: lastMessageAt ?? this.lastMessageAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
      );

  factory Object.fromRawJson(String str) => Object.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Object.fromJson(Map<String, dynamic> json) => Object(
    receivedBdPoints: json["receivedBdPoints"],
    expiredBdPoints: json["expiredBdPoints"],
    birthDate: json["birthDate"],
    address: json["address"],
    balance: json["balance"],
    points: json["points"],
    messages: List<dynamic>.from(json["messages"].map((x) => x)),
    news: List<dynamic>.from(json["news"].map((x) => x)),
    fbId: json["fb_id"],
    appleId: json["apple_id"],
    googleId: json["google_id"],
    twitterId: json["twitter_id"],
    gender: json["gender"],
    qrCode: json["QRCode"],
    promocodeIsUsed: json["promocodeIsUsed"],
    uniqueCode: json["uniqueCode"],
    customField0: json["custom_field_0"],
    customField1: json["custom_field_1"],
    customField2: json["custom_field_2"],
    id: json["_id"],
    name: json["name"],
    phone: json["phone"],
    email: json["email"],
    password: json["password"],
    promocode: json["promocode"],
    lastMessageAt: DateTime.parse(json["lastMessageAt"]),
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "receivedBdPoints": receivedBdPoints,
    "expiredBdPoints": expiredBdPoints,
    "birthDate": birthDate,
    "address": address,
    "balance": balance,
    "points": points,
    "messages": List<dynamic>.from(messages.map((x) => x)),
    "news": List<dynamic>.from(news.map((x) => x)),
    "fb_id": fbId,
    "apple_id": appleId,
    "google_id": googleId,
    "twitter_id": twitterId,
    "gender": gender,
    "QRCode": qrCode,
    "promocodeIsUsed": promocodeIsUsed,
    "uniqueCode": uniqueCode,
    "custom_field_0": customField0,
    "custom_field_1": customField1,
    "custom_field_2": customField2,
    "_id": id,
    "name": name,
    "phone": phone,
    "email": email,
    "password": password,
    "promocode": promocode,
    "lastMessageAt": lastMessageAt.toIso8601String(),
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}
