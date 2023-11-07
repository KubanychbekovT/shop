import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/domain/product/product.dart';
import 'package:sajda_shop/presentation/cart/widgets/cart_item_quantity_modifier_widget.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';
import 'package:sajda_shop/repository/core/constants.dart';

import '../order_details_page.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final bool isHorizontal;

  const ProductCard(
      {super.key, required this.product, this.isHorizontal = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsPage(data: product)));
      },
      child: Builder(builder: (context) {
        if (isHorizontal) {
          return SizedBox(
            width: 320,
            height: 120,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: product.imgArray.isNotEmpty?Image.network(
                      "${Constants.serverBaseUrl}/${product.imgArray.first}",
                      // Use the product's image property here
                      fit: BoxFit.cover,
                    ):SvgPicture.asset("assets/images/no_img.svg",fit: BoxFit.fill,),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            "${product.name}\n",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: ColorConstants.secondaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "TM-64529",
                                    style: TextStyle(
                                        color:
                                            Color(0xff12121D).withOpacity(0.3),
                                        fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  BlocBuilder<ProfileManagerCubit,
                                      ProfileManagerState>(
                                    buildWhen: (p, c) {
                                      if (p.appSettings?.appMode.currency !=
                                          c.appSettings?.appMode.currency) {
                                        return true;
                                      }
                                      return false;
                                    },
                                    builder: (context, state) {
                                      final currency =
                                          state.appSettings?.appMode.currency;
                                      return Text(
                                        "${product.price.toString()} $currency",
                                        style: const TextStyle(
                                            fontFamily: "MavenPro",
                                            fontSize: 16,
                                            color:
                                                ColorConstants.secondaryColor,
                                            fontWeight: FontWeight.bold),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              const Spacer(),
                              CartItemQuantityModifierWidget(isAdding: true, product: product)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return SizedBox(
            width: 160,
            height: 270,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    height: 160,
                    width: 160,
                    child: product.imgArray.isNotEmpty?Image.network(
                      "${Constants.serverBaseUrl}/${product.imgArray.first}",
                      // Use the product's image property here
                      fit: BoxFit.cover,
                    ):SvgPicture.asset("assets/images/no_img.svg",fit: BoxFit.fill,),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          "${product.name}\n",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: ColorConstants.secondaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "TM-64529",
                                  style: TextStyle(
                                      color: Color(0xff12121D).withOpacity(0.3),
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                BlocBuilder<ProfileManagerCubit,
                                    ProfileManagerState>(
                                  buildWhen: (p, c) {
                                    if (p.appSettings?.appMode.currency !=
                                        c.appSettings?.appMode.currency) {
                                      return true;
                                    }
                                    return false;
                                  },
                                  builder: (context, state) {
                                    final currency =
                                        state.appSettings?.appMode.currency;
                                    return Text(
                                      "${product.price.toString()} $currency",
                                      style: const TextStyle(
                                          fontFamily: "MavenPro",
                                          fontSize: 16,
                                          color: ColorConstants.secondaryColor,
                                          fontWeight: FontWeight.bold),
                                    );
                                  },
                                ),
                              ],
                            ),
                            const Spacer(),
                            CartItemQuantityModifierWidget(isAdding: true, product: product)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }
      }),
    );
  }
}
