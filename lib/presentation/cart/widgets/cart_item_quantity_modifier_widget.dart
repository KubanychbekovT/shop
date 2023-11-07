import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/application/cart/cart_manager_cubit.dart';
import 'package:sajda_shop/domain/product/product.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';

class CartItemQuantityModifierWidget extends StatelessWidget {
  const CartItemQuantityModifierWidget({super.key, required this.isAdding, required this.product});
  final bool isAdding;
  final Product product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(isAdding){
          context.read<CartManagerCubit>().addProduct(product);
        }else{
          context.read<CartManagerCubit>().subtractProduct(product);
        }
      },
      child:  CircleAvatar(
        radius: 16,
        backgroundColor: const Color(0xffF6F6F6),
        child: Icon(
          isAdding?Icons.add:Icons.remove,
          color: ColorConstants.secondaryColor,
          size: 20,
        ),
      ),
    );
  }
}
