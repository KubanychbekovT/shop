import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/application/cart/cart_manager_cubit.dart';
import 'package:sajda_shop/application/navigation/navigation_manager_cubit.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/presentation/cart/widgets/branch_info_widget.dart';
import 'package:sajda_shop/presentation/cart/widgets/cart_item_card.dart';
import 'package:sajda_shop/presentation/cart/widgets/cart_promo_code_bottom_sheet.dart';
import 'package:sajda_shop/presentation/cart/widgets/cart_summary_table.dart';
import 'package:sajda_shop/presentation/cart/widgets/delivery_type_dropdown.dart';
import 'package:sajda_shop/presentation/cart/widgets/delivery_type_switcher.dart';
import 'package:sajda_shop/presentation/core/styles.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';
import 'package:sajda_shop/presentation/core/widgets/custom_scaffold.dart';
import 'package:sajda_shop/presentation/core/widgets/info_message_widget.dart';
import 'package:sajda_shop/presentation/home/widgets/profile_circle_avatar.dart';
import 'package:sajda_shop/presentation/home/widgets/trailing_notification_icon.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isDeliveryRequested = true;
  bool usePoints = true;
  int selectedBranchIndex = 0;
  int selectedDeliveryIndex = 0;
  final addressController = TextEditingController();
  final commentController = TextEditingController();
  final deliveryRequestedValidatorKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
          title: const Text("Корзина"),
          leading: const ProfileCircleAvatar(),
          actions: const [TrailingNotificationIcon()]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<CartManagerCubit, CartManagerState>(
            builder: (context, state) {
          final cartItemList = state.cartItemList;
          final currency = context.read<ProfileManagerCubit>().currency;
          if (cartItemList.isEmpty) {
            return InfoMessageWidget(
              svgIconName: "cart_outlined",
              message: "Корзина пустая",
              detailMessage: "Пришло время что-нибудь заказать",
              widgetList: [
                const SizedBox(
                  height: 32,
                ),
                TextButton(
                  onPressed: () {
                    context
                        .read<NavigationManagerCubit>()
                        .setBottomNavigationSelectedIndex(1);
                  },
                  style: appTextButtonStyle.copyWith(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          side: const BorderSide(
                              color: ColorConstants.primaryColor, width: 2),
                          borderRadius: BorderRadius.circular(12))),
                      minimumSize:
                          MaterialStateProperty.all(const Size(128, 44))),
                  child: const Text(
                    "Начать",
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            );
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DeliveryTypeSwitcher(
                    isDeliveryRequested: isDeliveryRequested,
                    onChanged: (newValue) {
                      setState(() {
                        isDeliveryRequested = newValue;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                BranchInfoWidget(
                    selectedBranchIndex: selectedBranchIndex,
                    onSelected: (newSelectedBranchIndex) {
                      selectedBranchIndex = newSelectedBranchIndex;
                    }),
                const SizedBox(
                  height: 30,
                ),
                if (isDeliveryRequested) ...[
                  DeliveryTypeDropdown(
                      selectedDeliveryIndex: selectedDeliveryIndex,
                      onSelected: (newSelectedDeliveryIndex) {
                        selectedDeliveryIndex = newSelectedDeliveryIndex;
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Адрес доставки",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Form(
                    key: deliveryRequestedValidatorKey,
                    child: TextFormField(
                      textCapitalization: TextCapitalization.sentences,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Поле адреса доставки не может быть пустым';
                        }
                        return null;
                      },
                      decoration: appTextFieldInputDecoration.copyWith(
                          hintText: "Куда доставить?",
                          suffixIcon: SvgPicture.asset(
                              "assets/images/location_broken.svg")),
                      controller: addressController,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
                const Text(
                  "Комментарии",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  textCapitalization: TextCapitalization.sentences,
                  decoration: appTextFieldInputDecoration.copyWith(
                      hintText: "Ваши пожелания к заказу"),
                  controller: commentController,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Ваш заказ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const SizedBox(
                  height: 12,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: cartItemList.length,
                  itemBuilder: (context, index) {
                    final cartItem = cartItemList[index];
                    final product = cartItem.product;
                    return CartItemCard(product: product, cartItem: cartItem);
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        useSafeArea: true,
                        showDragHandle: true,
                        isScrollControlled: true,
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        builder: (_) {
                          return const CartPromoCodeBottomSheet();
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: const Color(0xffF5F6FF),
                    fixedSize: const Size(double.infinity, 44),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Использовать промокод',
                          style: TextStyle(color: ColorConstants.primaryColor),
                        ),
                      ),
                      Transform.flip(
                        flipX: true,
                        child: SvgPicture.asset(
                          "assets/images/arrow_back_ios_style.svg",
                          color: ColorConstants.secondaryColor,
                          alignment: Alignment.centerRight,
                          height: 32,
                          width: 32,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CartSummaryTable(
                    isDeliveryRequested: isDeliveryRequested,
                    usePoints: usePoints,
                    onChanged: (newValue) => usePoints = newValue),

                ElevatedButton(
                    onPressed: () {
                      if (isDeliveryRequested) {
                        final isValid = deliveryRequestedValidatorKey
                            .currentState!
                            .validate();
                        if (!isValid) {
                          return;
                        }
                      }
                    },
                    style: appElevatedButtonStyle,
                    child: const Text('Подтвердить заказ')),
                const SizedBox(height: 30),
              ],
            ),
          );
        }),
      ),
    );
  }
}
