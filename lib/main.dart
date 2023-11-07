import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:sajda_shop/application/cart/cart_manager_cubit.dart';
import 'package:sajda_shop/application/category/category_watcher_cubit.dart';
import 'package:sajda_shop/application/navigation/navigation_manager_cubit.dart';
import 'package:sajda_shop/application/news/news_watcher_cubit.dart';
import 'package:sajda_shop/application/product/product_cubit.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/firebase_options.dart';
import 'package:sajda_shop/presentation/core/main_page.dart';
import 'package:sajda_shop/repository/get_it/get_it_initializer.dart';
import 'package:sajda_shop/repository/product/product_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await getItSetup();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => ProductCubit(ProductRepository())..loadProducts()),
        BlocProvider(create: (_) => CartManagerCubit()..initializeCart()),
        BlocProvider(create: (_) => ProfileManagerCubit()..loadProfile()),
        BlocProvider(create: (_) => NewsWatcherCubit()..loadNews()),
        BlocProvider(create: (_) => CategoryWatcherCubit()..loadNews()),
        BlocProvider(create: (_) => NavigationManagerCubit()),
      ],
      child: GestureDetector(
        onTap: () {
          WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          title: 'Sajda',
          theme: ThemeData(
            dividerTheme:const DividerThemeData(thickness: 1) ,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              bottomSheetTheme:
                  const BottomSheetThemeData(backgroundColor: Colors.white),
              fontFamily: "SFProDisplay",
              textTheme: const TextTheme(
                bodyText1: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black), // For normal text
              )),
          builder: FlutterSmartDialog.init(),
          debugShowCheckedModeBanner: false,
          home: const MainPage(),
        ),
      ),
    );
  }
}
