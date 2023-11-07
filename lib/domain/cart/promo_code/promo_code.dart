import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'promo_code.freezed.dart';
part 'promo_code.g.dart';

@freezed
class PromoCode with _$PromoCode {
  factory PromoCode({
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "already_used")
    required int currentNumberOfUses,
    @JsonKey(name: "number_of_uses")
    required int maxNumberOfUses,
    required String code,
    required double discount,
    required String endDate,
    @JsonKey(name: "fixed_sum")
    required double fixedSum,
    @JsonKey(name: "min_sum")
    required double minSum,
    required String name,
    required String startDate,
  }) = _PromoCode;

  factory PromoCode.fromJson(Map<String, dynamic> json) =>
      _$PromoCodeFromJson(json);
}
extension PromoCodeX on PromoCode?{
  String get discountOrFixedSumString=>((this?.discount != 0
      ? this?.discount
      : this?.fixedSum) ??
      0)
      .toInt().toString() +
      (
          (this?.discount != 0)
              ? "%"
              : "");
}

