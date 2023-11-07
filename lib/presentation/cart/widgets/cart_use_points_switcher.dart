import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';

class CartUsePointsSwitcher extends StatefulWidget {
  const CartUsePointsSwitcher({super.key, required this.usePoints, required this.onChanged});
  final bool usePoints;
  final Function(bool) onChanged;
  @override
  State<CartUsePointsSwitcher> createState() => _CartUsePointsSwitcherState();
}

class _CartUsePointsSwitcherState extends State<CartUsePointsSwitcher> {
  bool usePoints=false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileManagerCubit, ProfileManagerState>(
      builder: (context, state) {
        final points=state.user?.points??0;
        return Row(children: [
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Использовать баллы",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff222222),
                  ),
                ),
                Text(
                  "Баллов доступно к оплате: $points",
                  style: const TextStyle(
                    color: Color(0xff606877),
                  ),
                )
              ],),
          ),
          SizedBox(
            width: 48,
            height: 32,
            child: FittedBox(
              fit: BoxFit.fill,
              child: CupertinoSwitch(activeColor:ColorConstants.primaryColor,value: usePoints, onChanged: (newValue){
                setState(() {
                  usePoints=newValue;
                });
                widget.onChanged(usePoints);
              }),
            ),
          )
        ],);
      },
    );
  }
}
