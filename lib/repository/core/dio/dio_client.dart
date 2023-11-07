import 'package:dio/dio.dart';
import 'package:sajda_shop/repository/core/constants.dart';
import 'package:sajda_shop/repository/core/dio/custom_interceptor.dart';
import 'package:sajda_shop/repository/core/token_storage.dart';
Dio get dio=>getDioInstance();
Dio getDioInstance(){
  final dio=Dio();
  dio.interceptors.add(CustomInterceptors());
  dio.options.headers["access-place"] = Constants.accessPlaceToken;
  if(TokenStorage.isAuthorized){
    dio.options.headers["x-access-token"] = TokenStorage.refreshToken;
  }
  return dio;
}