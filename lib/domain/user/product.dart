import 'package:meta/meta.dart';
import 'dart:convert';

class Product {
  final bool hasMultipleTypes;
  final String oneCId;
  final String type;
  final List<String> imgArray;
  final bool active;
  final int quantity;
  final int price;
  final int promoPrice;
  final bool recommend;
  final String id;
  final String modelType;
  final String name;
  final String nameRu;
  final String description;
  final String vendorCode;
  final Category category;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String img;
  final int v;
  final List<dynamic> sizes;

  Product({
    required this.hasMultipleTypes,
    required this.oneCId,
    required this.type,
    required this.imgArray,
    required this.active,
    required this.quantity,
    required this.price,
    required this.promoPrice,
    required this.recommend,
    required this.id,
    required this.modelType,
    required this.name,
    required this.nameRu,
    required this.description,
    required this.vendorCode,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
    required this.img,
    required this.v,
    required this.sizes,
  });

  Product copyWith({
    bool? hasMultipleTypes,
    String? oneCId,
    String? type,
    List<String>? imgArray,
    bool? active,
    int? quantity,
    int? price,
    int? promoPrice,
    bool? recommend,
    String? id,
    String? modelType,
    String? name,
    String? nameRu,
    String? description,
    String? vendorCode,
    Category? category,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? img,
    int? v,
    List<dynamic>? sizes,
  }) =>
      Product(
        hasMultipleTypes: hasMultipleTypes ?? this.hasMultipleTypes,
        oneCId: oneCId ?? this.oneCId,
        type: type ?? this.type,
        imgArray: imgArray ?? this.imgArray,
        active: active ?? this.active,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
        promoPrice: promoPrice ?? this.promoPrice,
        recommend: recommend ?? this.recommend,
        id: id ?? this.id,
        modelType: modelType ?? this.modelType,
        name: name ?? this.name,
        nameRu: nameRu ?? this.nameRu,
        description: description ?? this.description,
        vendorCode: vendorCode ?? this.vendorCode,
        category: category ?? this.category,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        img: img ?? this.img,
        v: v ?? this.v,
        sizes: sizes ?? this.sizes,
      );

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    hasMultipleTypes: json["hasMultipleTypes"],
    oneCId: json["oneCId"],
    type: json["type"],
    imgArray: List<String>.from(json["imgArray"].map((x) => x)),
    active: json["active"],
    quantity: json["quantity"],
    price: json["price"],
    promoPrice: json["promoPrice"],
    recommend: json["recommend"],
    id: json["_id"],
    modelType: json["model_type"],
    name: json["name"],
    nameRu: json["name_ru"],
    description: json["description"],
    vendorCode: json["vendorCode"],
    category: Category.fromJson(json["category"]),
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    img: json["img"],
    v: json["__v"],
    sizes: List<dynamic>.from(json["sizes"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "hasMultipleTypes": hasMultipleTypes,
    "oneCId": oneCId,
    "type": type,
    "imgArray": List<dynamic>.from(imgArray.map((x) => x)),
    "active": active,
    "quantity": quantity,
    "price": price,
    "promoPrice": promoPrice,
    "recommend": recommend,
    "_id": id,
    "model_type": modelType,
    "name": name,
    "name_ru": nameRu,
    "description": description,
    "vendorCode": vendorCode,
    "category": category.toJson(),
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "img": img,
    "__v": v,
    "sizes": List<dynamic>.from(sizes.map((x) => x)),
  };
}

class Category {
  final String oneCId;
  final String id;
  final String name;
  final String type;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  Category({
    required this.oneCId,
    required this.id,
    required this.name,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  Category copyWith({
    String? oneCId,
    String? id,
    String? name,
    String? type,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) =>
      Category(
        oneCId: oneCId ?? this.oneCId,
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
      );

  factory Category.fromRawJson(String str) => Category.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    oneCId: json["oneCId"],
    id: json["_id"],
    name: json["name"],
    type: json["type"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "oneCId": oneCId,
    "_id": id,
    "name": name,
    "type": type,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}
