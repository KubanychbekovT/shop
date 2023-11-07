
import 'package:dio/dio.dart';
import 'package:sajda_shop/domain/news/news.dart';
import 'package:sajda_shop/domain/product/product.dart';
import 'package:sajda_shop/domain/user/user.dart';
import 'package:sajda_shop/repository/core/constants.dart';
import 'package:sajda_shop/repository/core/dio/dio_client.dart';
import 'package:sajda_shop/repository/core/token_storage.dart';

class NewsRepository{
  Future<List<News>> getNewsList() async {
    final response = await dio.get("${Constants.serverBaseUrl}/api/getNews");
    final List<News> productList=List.from(response.data["objects"]).map((e) =>News.fromJson(e) ).toList();
    return productList;
  }
}