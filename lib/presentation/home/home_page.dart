import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/application/navigation/navigation_manager_cubit.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/presentation/auth/sign_in_page.dart';
import 'package:sajda_shop/presentation/core/widgets/custom_scaffold.dart';
import 'package:sajda_shop/presentation/home/widgets/bestseller_product_list_view_horizontal.dart';
import 'package:sajda_shop/presentation/home/widgets/bonus_card_widget.dart';
import 'package:sajda_shop/presentation/home/widgets/category_overview_widget.dart';
import 'package:sajda_shop/presentation/home/widgets/profile_circle_avatar.dart';
import 'package:sajda_shop/presentation/home/widgets/recommended_product_list_view_horizontal.dart';
import 'package:sajda_shop/presentation/home/widgets/section_header.dart';
import 'package:sajda_shop/presentation/home/widgets/trailing_notification_icon.dart';
import 'package:sajda_shop/presentation/news/news_overview_page.dart';
import 'package:sajda_shop/presentation/news/widgets/news_carousel.dart';
import 'package:sajda_shop/presentation/profile/profile_page.dart';
import 'package:sajda_shop/repository/core/token_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return CustomScaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xff0E144A)),
          ),
          ListView(
            children: [
              // const SafeArea(child: SearchField()),
              SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16),
                  child: BlocBuilder<ProfileManagerCubit, ProfileManagerState>(
                    builder: (context, state) {
                      final user = state.user;
                      return SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            const ProfileCircleAvatar(),
                            const SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 32,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    (user != null) ? "С возвращением!" : "",
                                    maxLines: 1,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    user?.name ?? "",
                                    maxLines: 1,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                              "assets/images/search_catalog.svg",
                              color: Colors.white,
                            ),
                            const TrailingNotificationIcon(iconColor: Colors.white,),

                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const BonusCardWidget(),
              const SizedBox(
                height: 32,
              ),

              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child:  Column(
                  children: [
                    SectionHeader(
                        sectionName: "Каталог",onWatchAllTapped: (){
                          context.read<NavigationManagerCubit>().setBottomNavigationSelectedIndex(1);
                    },),
                    const CategoryOverviewWidget(),
                    const SizedBox(
                      height: 32,
                    ),
                    const SectionHeader(
                        sectionName: "Новости и акции",
                        watchAllDestinationWidget: NewsOverviewPage()),
                    const NewsCarousel(),
                    const SizedBox(height: 24),
                    const SectionHeader(
                        sectionName: "Рекомендуемые",
                        watchAllDestinationWidget: NewsOverviewPage()),
                    const RecommendedProductListView(),
                    const SectionHeader(
                        sectionName: "Хиты продаж",
                        watchAllDestinationWidget: NewsOverviewPage()),
                    const BestsellerProductListView(),
                    const SizedBox(height: 24),
                    const SectionHeader(
                        sectionName: "Акционные товары",
                        watchAllDestinationWidget: NewsOverviewPage()),
                    const RecommendedProductListView(),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
