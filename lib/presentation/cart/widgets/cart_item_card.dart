import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/domain/cart/cart_item.dart';
import 'package:sajda_shop/domain/product/product.dart';
import 'package:sajda_shop/presentation/cart/widgets/cart_item_quantity_modifier_widget.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';
import 'package:sajda_shop/repository/core/constants.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({super.key, required this.product, required this.cartItem});
  final Product product;
  final CartItem cartItem;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      contentPadding: const EdgeInsets.symmetric(
          horizontal: 0, vertical: 0),
      horizontalTitleGap: 8,
      minVerticalPadding: 0,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: product.imgArray.isNotEmpty?Image.network(
          "${Constants.serverBaseUrl}/${product.imgArray.first}",
          height: 56,
          width: 56,
          fit: BoxFit.cover,
        ):SvgPicture.asset("assets/images/no_img.svg",height:56,width:56,fit: BoxFit.fill,),
      ),
      titleAlignment: ListTileTitleAlignment.center,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          product.name,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: ColorConstants.secondaryColor),
        ),
      ),
      trailing: Text(
        '${product.price * cartItem.quantity} KGS',
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CartItemQuantityModifierWidget(
              isAdding: false, product: product),
          const SizedBox(
            width: 12,
          ),
          Text(
            '${cartItem.quantity}',
            style: const TextStyle(
                fontSize: 17,
                color: ColorConstants.secondaryColor),
          ),
          const SizedBox(
            width: 12,
          ),
          CartItemQuantityModifierWidget(
              isAdding: true, product: product),
        ],
      ),
    );
  }
}
