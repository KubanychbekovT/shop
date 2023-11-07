import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sajda_shop/domain/auth/auth_social_media_data.dart';
import 'package:sajda_shop/repository/core/constants.dart';
import 'package:sajda_shop/repository/core/dio/dio_client.dart';
import 'package:sajda_shop/repository/core/token_storage.dart';

class AuthRepository {
  Future<void> logOut()async{
    final isGoogleSignedInUser= GoogleSignIn().currentUser;
    if(isGoogleSignedInUser!=null){
      await GoogleSignIn().signOut();
    }
    await TokenStorage().clearTokenData();
  }
  Future<void> signIn(String phone, String password) async {
    final trimmedPhone = phone.replaceAll(" ", "");
    final response = await dio.post("${Constants.serverBaseUrl}/loginClient",
        data: FormData.fromMap({"phone": trimmedPhone, "password": password}));
    await TokenStorage().setAccessToken(response.data["token"]);
    await TokenStorage().setRefreshToken(response.data["refresh_token"]);
    await TokenStorage().setId(response.data["object"]["_id"]);
    return;
  }
  Future<void> authenticateWithSocialMedia(AuthSocialMediaData authSocialMediaData,bool isSignIn) async {
    final url=isSignIn?"${Constants.serverBaseUrl}/loginClientSocial":"${Constants.serverBaseUrl}/registerClientSocial";
    final response = await dio.post(url,
        data: FormData.fromMap(authSocialMediaData.toJson()));
    if(isSignIn&&response.statusCode==500){
     await authenticateWithSocialMedia(authSocialMediaData, false);
    }
    await TokenStorage().setAccessToken(response.data["token"]);
    await TokenStorage().setRefreshToken(response.data["refresh_token"]);
    await TokenStorage().setId(response.data["object"]["_id"]);
    return;
  }


  Future<void> signUp(
      {required String name,
      required String phone,
      required String email,
      required String password}) async {
    final trimmedPhone = phone.replaceAll(" ", "");
    final response = await dio.post("${Constants.serverBaseUrl}/registerClient",
        data: FormData.fromMap({
          "name": name,
          "phone": trimmedPhone,
          "email": email,
          "password": password
        }));
    print("signUp response is ${response.statusCode} and ${response.data}");
    await TokenStorage().setAccessToken(response.data["token"]);
    await TokenStorage().setRefreshToken(response.data["refresh_token"]);
    await TokenStorage().setId(response.data["object"]["_id"]);
    return;
  }
}
