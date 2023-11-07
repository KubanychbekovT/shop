enum AuthSocialMediaType{
  facebook,google,apple
}
extension AuthSocialMediaTypeX on AuthSocialMediaType{
  String get name {
    switch (this) {
      case AuthSocialMediaType.facebook:
        return 'facebook';
      case AuthSocialMediaType.google:
        return 'google';
      case AuthSocialMediaType.apple:
        return 'apple';
    }
  }

}