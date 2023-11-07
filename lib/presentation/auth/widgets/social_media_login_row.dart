import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sajda_shop/application/auth/auth_cubit.dart';
import 'package:sajda_shop/domain/auth/auth_social_media_data.dart';

class SocialMediaLoginRow extends StatelessWidget {
  const SocialMediaLoginRow({super.key, required this.isSignIn});
  final bool isSignIn;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.grey[200]!, width: 1),
                shape: BoxShape.circle),
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              "assets/images/facebook.svg",
              height: 28,
              width: 28,
            )),
        const SizedBox(
          width: 24,
        ),
        InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: () async {
            final googleData = await GoogleSignIn().signIn();
            if (googleData != null) {
              final authentication = await googleData.authentication;
              final authSocialMediaData=AuthSocialMediaData(socialMediaType: "google",
                  token: authentication.idToken,
                  screenName:googleData.displayName ,
                  fullName
                  :googleData.displayName,email: googleData.email);
              if(context.mounted){
                context.read<AuthCubit>().authenticateWithSocialMedia(authSocialMediaData, isSignIn);
              }
            }
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.grey[200]!, width: 1),
                  shape: BoxShape.circle),
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                "assets/images/google.svg",
                height: 28,
                width: 28,
              )),
        ),
        const SizedBox(
          width: 24,
        ),
        Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.grey[200]!, width: 1),
                shape: BoxShape.circle),
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              "assets/images/apple.svg",
              height: 28,
              width: 28,
            )),
      ],
    );
  }
}
