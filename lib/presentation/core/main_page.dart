import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/application/navigation/navigation_manager_cubit.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/presentation/auth/sign_in_page.dart';
import 'package:sajda_shop/presentation/cart/cart_page.dart';
import 'package:sajda_shop/presentation/chat/chat_page.dart';
import 'package:sajda_shop/presentation/home/home_page.dart';
import 'package:sajda_shop/presentation/more/more_page.dart';
import 'package:sajda_shop/presentation/qr/qr_code_page.dart';
import 'package:sajda_shop/repository/core/token_storage.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Color iconColor(int index,BuildContext context) {
    if (index == context.read<NavigationManagerCubit>().state.bottomNavigationSelectedIndex) {
      return const Color(0xff616CF5);
    }
    return const Color(0xff1C274C);
  }

   List<String>    bottomNavigationIconPaths (bool isCatalogMode)=>  [
    "assets/images/icons/home.svg",
    "assets/images/icons/catalog.svg",
    "assets/images/icons/barcode.svg",
     if(!isCatalogMode)...[
       "assets/images/icons/cart.svg",
     ],
    "assets/images/icons/chat.svg",
  ];
  List<Widget>    bottomNavigationPages (bool isCatalogMode)=>  [
    const HomePage(),
    const ChatPage(),
    const QrPage(),
  if(!isCatalogMode)...[
  const CartPage(),
  ],
    const MorePage(),
  ];

  void _onItemTapped(int index,BuildContext context) {
    if (index != 0 && !TokenStorage.isAuthorized) {
      Navigator.push(
          context,
          MaterialPageRoute(
              fullscreenDialog: true,
              builder: (context) {
                return const SignInPage();
              }));
      return;
    }
    context.read<NavigationManagerCubit>().setBottomNavigationSelectedIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileManagerCubit, ProfileManagerState>(
      buildWhen: (p,c){
        if(p.appSettings?.appMode.catalogMode!=c.appSettings?.appMode.catalogMode){
          return true;
        }
        return false;
      },
  builder: (context, state) {
    final isCatalogMode=state.appSettings?.appMode.catalogMode??false;
    return BlocBuilder<NavigationManagerCubit, NavigationManagerState>(
      builder: (context, state) {
        final bottomNavigationSelectedIndex=state.bottomNavigationSelectedIndex;
        return Scaffold(
          body: IndexedStack(index:bottomNavigationSelectedIndex, children:
          bottomNavigationPages(isCatalogMode)),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                    color: Colors.black, width: 0.5), // Верхняя граница
              ),
            ),
            child: BottomNavigationBar(
              showUnselectedLabels: false,
              showSelectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.black.withOpacity(.60),
              selectedFontSize: 14,
              unselectedFontSize: 14,
              onTap:(index)=> _onItemTapped(index,context),
              currentIndex: bottomNavigationSelectedIndex,
              items: [
                for (int i = 0; i < bottomNavigationIconPaths(isCatalogMode).length; i++) ...[
                  BottomNavigationBarItem(
                    label: "$i",
                    icon: SizedBox(
                      height: 34,
                      child: Stack(
                        children: [
                          SvgPicture.asset(bottomNavigationIconPaths(isCatalogMode)[i],
                              colorFilter:
                              ColorFilter.mode(iconColor(i,context), BlendMode.srcIn)),
                          if (i == bottomNavigationSelectedIndex) ...[
                            Positioned(
                                bottom: 0,
                                left: 8,
                                right: 8,
                                child: Center(
                                    child: Container(
                                      height: 16,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff616CF5)
                                      ),
                                    )))
                          ]
                        ],
                      ),
                    ),
                  ),
                ]
              ],
            ),
          ),
        );
      },
    );
  },
);
  }
}
