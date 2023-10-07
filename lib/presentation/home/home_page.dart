import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sajda_shop/domain/cart/cart_cubit.dart';
import 'package:sajda_shop/presentation/core/widgets/custom_app_bar.dart';
import 'package:sajda_shop/presentation/home/drawer_page.dart';
import 'package:sajda_shop/presentation/home/order_details_page.dart';
import 'package:sajda_shop/presentation/home/widgets/card.dart';
import 'package:sajda_shop/presentation/home/widgets/catalog.dart';
import 'package:sajda_shop/presentation/home/widgets/news_widgets.dart';
import '../../data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: DrawerPage(),
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 60),
          child: CustomAppBar(
            title: 'Sajda',
          ),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              const SizedBox(height: 20),
              NewsWidget(),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Каталог',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ),
              catalog(w),
              const SizedBox(height: 15),
              SizedBox(
                  width: w * 0.95,
                  child: StaggeredGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      children: [
                        ...List.generate(
                            products.length,
                            (index) => ProductCard(
                                  product: products[index],
                                  onTap: (product) {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (_) => DetailsPage(
                                          data: product,
                                          //hero:
                                         //     "${product[index]["name"]}",
                                        ),
                                      ),
                                    );
                                  },
                              onAddToCart: (product) {
                                    cartCubit.addToCart(product);
                              }
                                ))
                      ]))
            ])));
  }
}
