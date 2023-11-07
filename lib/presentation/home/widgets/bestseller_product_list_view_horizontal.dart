import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/application/product/product_cubit.dart';
import 'package:sajda_shop/presentation/home/widgets/product_card.dart';

class BestsellerProductListView extends StatelessWidget {
  const BestsellerProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProductLoaded) {
          final productList = state.productList;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 270,
              child: Wrap(
                runSpacing: 16,
                direction: Axis.vertical,
                spacing: 24,
                children: [
                  ...productList.map((product) => ProductCard(product: product,isHorizontal: true,))
                ],
              ),
            ),
          );
          // return SizedBox(
          //     height: 280,
          //     child: ListView.builder(
          //       padding: const EdgeInsets.symmetric(horizontal: 16),
          //       itemCount:  productList.length,
          //       physics: const ClampingScrollPhysics(),
          //       shrinkWrap: true,
          //       scrollDirection: Axis.horizontal,
          //       itemBuilder: ((context, i) {
          //         return Padding(
          //             padding: const EdgeInsets.only(right: 15.0),
          //             child:ProductCard(product: productList[i],isHorizontal: true,));
          //       }),
          //     ));
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
