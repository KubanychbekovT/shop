import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required bool receivedBdPoints,
    required bool expiredBdPoints,
    required DateTime? birthDate,
    required String? address,
    required int balance,
    required int points,
    required List<dynamic> messages,
    required List<dynamic> news,
    required String? fbId,
    required String? appleId,
    required String? googleId,
    required String? twitterId,
    required String gender,
    @JsonKey(name: "QRCode")
    required String qrCode,
    required bool promocodeIsUsed,
    required String? uniqueCode,
    required String? customField0,
    required String? customField1,
    required String? customField2,
    @JsonKey(name: "_id")
    required String id,
    required String name,
    required String? phone,
    required String? email,
    required String? password,
    required String promocode,
    required DateTime lastMessageAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int discount,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
