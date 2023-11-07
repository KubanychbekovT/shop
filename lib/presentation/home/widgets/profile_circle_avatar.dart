import 'package:flutter/material.dart';
import 'package:sajda_shop/presentation/auth/sign_in_page.dart';
import 'package:sajda_shop/presentation/profile/profile_page.dart';
import 'package:sajda_shop/repository/core/token_storage.dart';

class ProfileCircleAvatar extends StatelessWidget {
  const ProfileCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                  TokenStorage.isAuthorized
                      ? const ProfilePage()
                      : const SignInPage()));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SizedBox(
              height: 32,
              width: 32,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    "assets/images/profile.png",
                    height: 32,
                    width: 32,
                    fit: BoxFit.contain,
                  ))),
        ));
  }
}
