import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, required this.isKeyboardStyle});

  final bool isKeyboardStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Align(
        alignment: Alignment.centerLeft,
        child: isKeyboardStyle?Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child:SvgPicture.asset(
             "assets/images/arrow_back.svg",
              color: Colors.black,
              alignment: Alignment.centerLeft,
              height: 16,
              width: 16,
            )
        ):Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child:SvgPicture.asset(
                  "assets/images/arrow_back_ios_style.svg",
                  color: Colors.black,
                  alignment: Alignment.centerLeft,
                  height: 32,
                  width: 32,
                )
        ),
      ),
    );
  }
}
