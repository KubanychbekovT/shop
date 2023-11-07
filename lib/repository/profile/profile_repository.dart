import 'package:dio/dio.dart';
import 'package:sajda_shop/domain/app_settings/app_settings.dart';
import 'package:sajda_shop/domain/user/user.dart';
import 'package:sajda_shop/domain/user/user_wrapper.dart';
import 'package:sajda_shop/repository/core/constants.dart';
import 'package:sajda_shop/repository/core/dio/dio_client.dart';
import 'package:sajda_shop/repository/core/token_storage.dart';

class ProfileRepository {
  Future<AppSettings> getAppSettings() async {
    final response = await dio.get("${Constants.serverBaseUrl}/api/getSettings");
    print("getAppSettings ${response.data} and ${response.statusCode}");
    final AppSettings appSettings=AppSettings.fromJson(response.data);
    return appSettings;
  }
  Future<User> getProfile() async {
    final response = await dio
        .get("${Constants.serverBaseUrl}/api/getClient/${TokenStorage.id}");
    final userWrapper = UserWrapper.fromJson(response.data);
    return userWrapper.user;
  }

  Future<bool> updateProfile(User user) async {
    final bodyMap = {
      "name": user.name,
      "phone": user.phone?.replaceAll(" ", ""),
      "email": user.email,
      if (user.password!.isNotEmpty) "password": user.password,
      "gender": user.gender,
      "birthDate": user.birthDate,
    };
    final response = await dio.put(
        "${Constants.serverBaseUrl}/api/updateClient/${TokenStorage.id}",
        data: FormData.fromMap(bodyMap));
    return response.statusCode==200;
  }
}
