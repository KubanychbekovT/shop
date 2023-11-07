import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/application/cart/cart_manager_cubit.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/domain/cart/promo_code/promo_code.dart';
import 'package:sajda_shop/presentation/cart/widgets/cart_use_points_switcher.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';
import 'package:sajda_shop/repository/cart/cart_repository.dart';

class CartSummaryTable extends StatefulWidget {
  const CartSummaryTable(
      {super.key,
      required this.isDeliveryRequested,
      required this.usePoints,
      required this.onChanged});

  final bool isDeliveryRequested;
  final bool usePoints;
  final Function(bool) onChanged;

  @override
  State<CartSummaryTable> createState() => _CartSummaryTableState();
}

class _CartSummaryTableState extends State<CartSummaryTable> {
  late bool usePoints = widget.usePoints;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartManagerCubit, CartManagerState>(
      builder: (context, state) {
        final promoCode = state.promoCode;
        final totalAmount = context.read<CartManagerCubit>().sum;
        final currency = context.read<ProfileManagerCubit>().currency;
        final points = context.read<ProfileManagerCubit>().points;
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffDADADA)),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Итого",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        "$totalAmount $currency",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Divider(),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Скидка",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        promoCode?.discountOrFixedSumString??"0",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: ColorConstants.secondaryColor),
                      )
                    ],
                  ),
                  if (widget.isDeliveryRequested) ...[
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      child: Divider(),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            "Доставка",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Text(
                          "300 $currency",
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: ColorConstants.secondaryColor),
                        )
                      ],
                    ),
                  ]
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CartUsePointsSwitcher(
                usePoints: widget.usePoints,
                onChanged: (newValue) => usePoints = newValue),
            const SizedBox(
              height: 48,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Оплата баллами",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.secondaryColor,
                    ),
                  ),
                ),
                Text(
                  "-${usePoints ? points : 0}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.secondaryColor,
                  ),
                )
              ],
            ),
            const SizedBox(height: 8,),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    "Итого",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.secondaryColor,
                    ),
                  ),
                ),
                Text(
                  "${CartRepository.calculateCartSummary(totalAmount,
                          discountOrFixedSumString:
                              promoCode.discountOrFixedSumString,
                          deliveryFee: widget.isDeliveryRequested ? 300 : 0,
                          points: usePoints ? points : 0)
                      .toString()} $currency",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
