import 'package:flutter/material.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';

class DeliveryTypeSwitcher extends StatefulWidget {
  const DeliveryTypeSwitcher({super.key,required this.isDeliveryRequested, required this.onChanged});
  final bool isDeliveryRequested;
  final Function(bool) onChanged;
  @override
  State<DeliveryTypeSwitcher> createState() => _DeliveryTypeSwitcherState();
}

class _DeliveryTypeSwitcherState extends State<DeliveryTypeSwitcher> {
  late bool isDeliveryRequested=widget.isDeliveryRequested;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                isDeliveryRequested = true;
                widget.onChanged(isDeliveryRequested);
              });
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: isDeliveryRequested?ColorConstants.primaryColor:Colors.white,
              side: BorderSide(
                color: isDeliveryRequested
                    ? ColorConstants.primaryColor
                    : Colors.black,
                width: 1,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: SizedBox(
              height: 40,
              width: 130,
              child: Center(
                child: Text(
                  'Доставка',
                  style: TextStyle(
                      color:  isDeliveryRequested
                          ? Colors.white
                          : const Color(0xff848484)
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                isDeliveryRequested = false;
                widget.onChanged(isDeliveryRequested);
              });
            },
            style:  ElevatedButton.styleFrom(
              elevation: 0,
              primary: !isDeliveryRequested?ColorConstants.primaryColor:Colors.white,
              side: BorderSide(
                color: !isDeliveryRequested
                    ? ColorConstants.primaryColor
                    : Colors.black,
                width: 1,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child:  SizedBox(
              height: 40,
              width: 130,
              child: Center(
                child: Text(
                  'Самовывоз',
    style: TextStyle(
    color:  !isDeliveryRequested
    ? Colors.white
        : const Color(0xff848484)
                ),
              ),
            ),
          ),
        ),)
      ],
    );
  }
}
