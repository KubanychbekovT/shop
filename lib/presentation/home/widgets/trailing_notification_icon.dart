import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/presentation/auth/sign_in_page.dart';
import 'package:sajda_shop/presentation/profile/navigation_pages/notification_overview_page.dart';
import 'package:sajda_shop/repository/core/token_storage.dart';

class TrailingNotificationIcon extends StatelessWidget {
  const TrailingNotificationIcon({super.key, this.iconColor=Colors.black});
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap:(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
              TokenStorage.isAuthorized
                  ? const NotificationOverviewPage()
                  : const SignInPage()));
    },child: Padding(
      padding: const EdgeInsets.only(right:16),
      child: SvgPicture.asset("assets/images/bell_broken.svg",color: iconColor,height: 24,width: 24,),
    ));
  }
}
