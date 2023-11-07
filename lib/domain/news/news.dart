import 'package:meta/meta.dart';
import 'dart:convert';

class News {
  final String id;
  final String name;
  final String desc;
  final String category;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String img;
  final int v;
  final DateTime? endDate;
  final DateTime? startDate;

  News({
    required this.id,
    required this.name,
    required this.desc,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
    required this.img,
    required this.v,
    required this.endDate,
    required this.startDate,
  });

  News copyWith({
    String? id,
    String? name,
    String? desc,
    String? category,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? img,
    int? v,
    DateTime? endDate,
    DateTime? startDate,
  }) =>
      News(
        id: id ?? this.id,
        name: name ?? this.name,
        desc: desc ?? this.desc,
        category: category ?? this.category,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        img: img ?? this.img,
        v: v ?? this.v,
        endDate: endDate ?? this.endDate,
        startDate: startDate ?? this.startDate,
      );

  factory News.fromRawJson(String str) => News.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory News.fromJson(Map<String, dynamic> json) => News(
    id: json["_id"],
    name: json["name"],
    desc: json["desc"],
    category: json["category"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    img: json["img"],
    v: json["__v"],
    endDate: json["endDate"]!=null?DateTime.parse(json["endDate"]):null,
    startDate: json["startDate"]!=null?DateTime.parse(json["startDate"]):null,
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "desc": desc,
    "category": category,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "img": img,
    "__v": v,
    "endDate": endDate?.toIso8601String(),
    "startDate": startDate?.toIso8601String(),
  };
}
