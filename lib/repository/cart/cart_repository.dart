import 'dart:convert';

import 'package:sajda_shop/domain/cart/cart_item.dart';
import 'package:sajda_shop/domain/cart/promo_code/promo_code.dart';
import 'package:sajda_shop/domain/core/specific_exception.dart';
import 'package:sajda_shop/repository/core/constants.dart';
import 'package:sajda_shop/repository/core/dio/dio_client.dart';
import 'package:sajda_shop/repository/get_it/get_it_initializer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartRepository {
  static const cartItemListKey = "cartProductListKey";

  Future<void> saveCartItemList(List<CartItem> cartItemList) async {
    final prefs = getIt<SharedPreferences>();
    final List<String> cartItemStrings = cartItemList.map((cartItem) {
      return json.encode(cartItem.toJson());
    }).toList();
    await prefs.setStringList(cartItemListKey, cartItemStrings);
  }

  List<CartItem> getCartItemList() {
    final prefs = getIt<SharedPreferences>();
    final cartItemJsonList = prefs.getStringList(cartItemListKey) ?? [];
    final List<CartItem> productList = cartItemJsonList.map((cartItemJson) {
      return CartItem.fromJson(jsonDecode(cartItemJson));
    }).toList();
    return productList;
  }

  Future<PromoCode> checkForPromoCode(String promoCodeQuery, int sum) async {
    final response = await dio.get(
        "${Constants.serverBaseUrl}/api/searchPromocodeByCodeApi",
        queryParameters: {"search": promoCodeQuery, "sum": sum.toString()});
    if (response.data["msg"] ==
        "The amount for using the promo code has not been reached") {
      throw SpecificException(
          "Минимальная сумма для использования промокода не была достигнута");
    }
    final promoCode = PromoCode.fromJson(response.data["object"]);
    return promoCode;
  }

  static int calculateCartSummary(int totalAmount,
      {String discountOrFixedSumString = "0",
      int deliveryFee = 0,
      int points = 0}) {
    int finalAmount = totalAmount;
    if (discountOrFixedSumString != "0") {
      if (discountOrFixedSumString.contains("%")) {
        final discountPercentage = int.parse(discountOrFixedSumString.substring(
            0, discountOrFixedSumString.length - 1));
        finalAmount-=((finalAmount/100).round()*discountPercentage);
      } else {
        final discountFixedSum = int.parse(discountOrFixedSumString);
        finalAmount-=discountFixedSum;
      }
    }
    finalAmount+=deliveryFee;
    finalAmount-=points;
    return finalAmount;
  }
}
