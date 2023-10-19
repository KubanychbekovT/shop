import 'package:dio/dio.dart';
import 'package:sajda_shop/repository/core/token_storage.dart';

final dio=getDioInstance();
Dio getDioInstance(){
  final dio=Dio();
  dio.options.headers["access-place"] = "6100f2bd0dab4568e40d945a";
  if(TokenStorage.isAuthorized){
    dio.options.headers["x-access-token"] = TokenStorage.accessToken;
  }
  return dio;
}