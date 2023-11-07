import 'package:flutter/material.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key, required this.onCheckStatusChanged, required this.isChecked});

  final Function(bool) onCheckStatusChanged;
  final bool isChecked;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  static const animationDuration = Duration(milliseconds: 500);
  static const size = 24.0;
  late bool isChecked = widget.isChecked;
  final borderRadius= BorderRadius.circular(8);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: borderRadius,
      onTap: (){
        setState(() {
          isChecked=!isChecked;
        });
        widget.onCheckStatusChanged(isChecked);
      },
      child: ClipRRect(
        borderRadius: borderRadius,
        child: AnimatedContainer(
          duration: animationDuration,
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: isChecked! ? ColorConstants.primaryColor : Colors.transparent,
            border:Border.all(color:isChecked?ColorConstants.primaryColor: ColorConstants.defaultBorderColor),
            borderRadius: borderRadius,
          ),
          child: isChecked! ? const Icon(Icons.done,color: Colors.white,size: 20,) : const SizedBox(),
        ),
      ),
    );
  }
}
