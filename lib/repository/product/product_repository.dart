
import 'package:dio/dio.dart';
import 'package:sajda_shop/domain/user/product.dart';
import 'package:sajda_shop/domain/user/user.dart';
import 'package:sajda_shop/repository/core/constants.dart';
import 'package:sajda_shop/repository/core/dio_client.dart';
import 'package:sajda_shop/repository/core/token_storage.dart';

class ProductRepository{
  Future<List<Product>> getProductList() async {
    print("1--");
    final response = await dio.get("${Constants.serverBaseUrl}/api/getProducts");
    print("Dio headers");
    print(dio.options.headers);
    final List<Product> productList=List.from(response.data["objects"]).map((e) =>Product.fromJson(e) ).toList();
    return productList;
  }
}