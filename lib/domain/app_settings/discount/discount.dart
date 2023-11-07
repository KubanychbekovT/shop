import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount.freezed.dart';
part 'discount.g.dart';

@freezed
class Discount with _$Discount {
  factory Discount({
    required bool status,
    required String name,
    @JsonKey(name: "discount_percentage")
    required int discountPercentage,
    @JsonKey(name: "min_sum_of_purchases")
    required int minSumOfPurchases,
  }) = _Discount;

  factory Discount.fromJson(Map<String, dynamic> json) => _$DiscountFromJson(json);
}
