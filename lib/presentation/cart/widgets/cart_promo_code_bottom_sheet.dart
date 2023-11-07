import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/application/cart/cart_manager_cubit.dart';
import 'package:sajda_shop/presentation/core/styles.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';

class CartPromoCodeBottomSheet extends StatefulWidget {
  const CartPromoCodeBottomSheet({super.key});

  @override
  State<CartPromoCodeBottomSheet> createState() =>
      _CartPromoCodeBottomSheetState();
}

class _CartPromoCodeBottomSheetState extends State<CartPromoCodeBottomSheet> {
  TextEditingController? promoCodeEditingController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartManagerCubit, CartManagerState>(
      listenWhen: (p,c)=>p.promoCode!=c.promoCode,
      listener: (context,state){
        Navigator.pop(context);
      },
      builder: (context, state) {
        final promoCode = state.promoCode;
        promoCodeEditingController ??=
            TextEditingController(text: promoCode?.code);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom:MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Использовать промокод",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
              const SizedBox(height: 16,),
              TextField(
                controller: promoCodeEditingController,
                decoration: appTextFieldInputDecoration.copyWith(hintText: "Промокод"),
              ),
              const SizedBox(
                height: 32
              ),
              Row(
                children: [
                  const Expanded(
                      child: Text(
                    "Скидка",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  )),
                  Text(
                    ((promoCode?.discount != 0
                                    ? promoCode?.discount
                                    : promoCode?.fixedSum) ??
                                0)
                            .toInt().toString() +
                        (((promoCode?.discount != null) &&
                                (promoCode?.discount != 0))
                            ? "%"
                            : ""),
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              if (promoCode != null) ...[
                const Text(
                  "Промокод действителен на весь заказ",
                  style: TextStyle(
                      color: ColorConstants.secondaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
              const SizedBox(
                height: 64,
              ),
              ElevatedButton(
                style: appElevatedButtonStyle,
                onPressed: () {
                  if(context.read<CartManagerCubit>().state.promoCode?.code==promoCodeEditingController?.text){
                    Navigator.pop(context);
                  }else{
                    context.read<CartManagerCubit>().searchPromoCode(promoCodeEditingController!.text);
                    FocusScope.of(context).unfocus();
                  }
                },
                child: const Text(
                  "Использовать",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
                ),
              ),
              const SizedBox(height: 20,)
            ],
          ),
        );
      },
    );
  }
}
