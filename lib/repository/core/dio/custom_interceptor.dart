import 'package:dio/dio.dart';
import 'package:sajda_shop/repository/auth/auth_repository.dart';
import 'package:sajda_shop/repository/core/token_storage.dart';

class CustomInterceptors extends Interceptor {
  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 500 && TokenStorage.accessToken != null) {
      try {
        await AuthRepository().logOut();
      } catch (_) {}
    } else {
      return handler.resolve(Response(
          data: err.response?.data,
          requestOptions: err.requestOptions,
          statusCode: err.response?.statusCode));
    }
  }
}
