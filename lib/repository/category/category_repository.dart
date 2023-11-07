import 'package:sajda_shop/domain/product/product.dart';
import 'package:sajda_shop/repository/core/constants.dart';
import 'package:sajda_shop/repository/core/dio/dio_client.dart';

class CategoryRepository{
  Future<List<Category>> getCategoryList() async {
    final response = await dio.get("${Constants.serverBaseUrl}/api/getCategories?type=product");
    final List<Category> categoryList=List.from(response.data["objects"]).map((e) =>Category.fromJson(e) ).toList();
    return categoryList;
  }
}