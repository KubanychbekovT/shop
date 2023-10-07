import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/domain/cart/cart_cubit.dart';
import 'package:sajda_shop/presentation/core/main_page.dart';

void main() {
  runApp(
      // DevicePreview(
      //   builder: (context) =>
        const MyApp(),
      //)
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartCubit>(create: (_) => CartCubit()),
      ],
      child: MaterialApp(
        title: 'Sajda',
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}