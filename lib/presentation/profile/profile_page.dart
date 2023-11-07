import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/application/auth/auth_cubit.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/domain/core/navigation_item.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';
import 'package:sajda_shop/presentation/core/widgets/custom_scaffold.dart';
import 'package:sajda_shop/presentation/home/promo_page.dart';
import 'package:sajda_shop/presentation/profile/navigation_pages/my_status_page.dart';
import 'package:sajda_shop/presentation/profile/navigation_pages/notification_overview_page.dart';
import 'package:sajda_shop/presentation/profile/profile_edit_page.dart';

import '../home/about_company_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static const profileNavigationItems = [
    NavigationItem(
        text: "Мои заказы", svgIconName: "cart", destinationPage: SizedBox()),
    NavigationItem(
        text: "Мои данные",
        svgIconName: "document",
        destinationPage: ProfileEditPage()),
    NavigationItem(
        text: "Мои статусы", svgIconName: "star_rounded", destinationPage: MyStatusPage()),
    NavigationItem(
        text: "Уведомления", svgIconName: "bell", destinationPage: NotificationOverviewPage()),
    NavigationItem(
        text: "Промокоды", svgIconName: "coupon", destinationPage: PromoPage()),
    NavigationItem(
        text: "О компании", svgIconName: "info", destinationPage: AboutPage()),
    NavigationItem(text: "Выйти", svgIconName: "exit"),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Builder(builder: (context) {
        return BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            state.maybeMap(
                initial: (_) {
                  Navigator.pop(context);
                },
                orElse: () {});
          },
          child: CustomScaffold(
            appBar: AppBar(
              title: const Text("Настройки"),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 24),
                children: [
                  BlocBuilder<ProfileManagerCubit, ProfileManagerState>(
                    builder: (context, state) {
                      final user = state.user;
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfileEditPage(),
                              ));
                        },
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 32.0,
                                  backgroundColor: const Color(0xffF4F4F4),
                                  child: SvgPicture.asset(
                                    "assets/images/profile.svg",height: 32,width: 32,color: const Color(0xff606877),
                                  )),
                              const SizedBox(width: 20.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    user?.name ?? "",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text.rich(TextSpan(children: [
                                    const TextSpan(
                                        text: "Бонусы: ",
                                        style: TextStyle(
                                            color: Color(0xffB8B8BB))),
                                    TextSpan(
                                        text: (user?.points ?? 0).toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color:
                                                ColorConstants.primaryColor)),
                                  ], style: const TextStyle(fontSize: 15)))
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              Transform.flip(
                                flipX: true,
                                child: SvgPicture.asset(
                                  "assets/images/arrow_back_ios_style.svg",
                                  color: const Color(0xff606877),
                                  alignment: Alignment.centerLeft,
                                  height: 32,
                                  width: 32,
                                ),
                              ),
                              const SizedBox(width: 12,)
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    "Мой аккаунт",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  for (int i = 0; i < profileNavigationItems.length; i++) ...[
                         SizedBox(
                          height: i==5?64:16,
                        ),
                    Builder(builder: (context) {
                      final isExitItem =
                          i == (profileNavigationItems.length - 1);
                      final profileNavigationItem = (profileNavigationItems[i]);
                      return InkWell(
                        onTap: () {
                          if (isExitItem) {
                            context.read<ProfileManagerCubit>().logOut();
                            context.read<AuthCubit>().logOut();
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => profileNavigationItem
                                        .destinationPage!));
                          }
                        },
                        child: Container(
                          height: 56,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12).copyWith(right: 12),
                          decoration: BoxDecoration(
                              color: isExitItem
                                  ? ColorConstants.primaryColor
                                  : const Color(0xffF6F6F6),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                  "assets/images/${profileNavigationItem.svgIconName}.svg"),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: Text(profileNavigationItem.text!,style: TextStyle(color: isExitItem?Colors.white:null),)),
                              if (!isExitItem) ...[
                                Transform.flip(
                                  flipX: true,
                                  child: SvgPicture.asset(
                                    "assets/images/arrow_back_ios_style.svg",
                                    color: const Color(0xffB8B8BB),
                                    alignment: Alignment.centerRight,
                                    height: 32,
                                    width: 32,
                                  ),
                                )
                              ]
                            ],
                          ),
                        ),
                      );
                    })
                  ]
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
