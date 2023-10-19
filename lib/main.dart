import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/application/cart/cart_cubit.dart';
import 'package:sajda_shop/application/product/product_cubit.dart';
import 'package:sajda_shop/presentation/core/main_page.dart';
import 'package:sajda_shop/repository/get_it/get_it_initializer.dart';
import 'package:sajda_shop/repository/product/product_repository.dart';

void main() async{
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
        BlocProvider<ProductCubit>(create: (_) => ProductCubit(ProductRepository())),
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