class AuthSocialMediaData{
  final String socialMediaType;
  final String? token;
  final String? screenName;
  final String? fullName;
  final String? email;

  AuthSocialMediaData({required this.socialMediaType,required this.token,required this.screenName,required  this.fullName,required this.email});
  Map<String, dynamic> toJson() {
    return {
      'social': socialMediaType,
      'token': token??"",
      'screen_name': screenName??"",
      'full_name': fullName??"",
      'email': email??"",
    };
  }
}
