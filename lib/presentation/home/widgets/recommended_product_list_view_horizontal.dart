import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/application/product/product_cubit.dart';
import 'package:sajda_shop/presentation/home/widgets/product_card.dart';

class RecommendedProductListView extends StatelessWidget {
  const RecommendedProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProductLoaded) {
          final productList = state.productList;
          return SizedBox(
              height: 270,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount:  productList.length,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, i) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child:ProductCard(product: productList[i]));
                }),
              ));

        } else if (state is ProductError) {
          return Center(
            child: Text('Error: ${state.error}'),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
