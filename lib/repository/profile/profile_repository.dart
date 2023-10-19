
import 'package:dio/dio.dart';
import 'package:sajda_shop/domain/user/user.dart';
import 'package:sajda_shop/repository/core/constants.dart';
import 'package:sajda_shop/repository/core/dio_client.dart';
import 'package:sajda_shop/repository/core/token_storage.dart';

class ProfileRepository{
  Future<User> getProfile() async {
    final response = await dio.get("${Constants.serverBaseUrl}/api/getClient/${TokenStorage.id}");
    return User.fromJson(response.data);
  }
}