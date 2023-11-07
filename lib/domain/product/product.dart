import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'dart:convert';
part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required List<String> imgArray,
    required bool active,
    required int quantity,
    required int price,
    required int promoPrice,
    required bool recommend,
    @JsonKey(name: "_id")
    required String id,
    required String name,
    @JsonKey(name: "name_ru")
    required String nameRu,
    required String description,
    required Category? category,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class Category with _$Category {
  factory Category({
    @JsonKey(name: "_id") required String id,
    required String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

