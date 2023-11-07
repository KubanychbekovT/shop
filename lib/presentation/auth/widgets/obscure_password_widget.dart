import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ObscurePasswordWidget extends StatelessWidget {
  const ObscurePasswordWidget({super.key, required this.onTap, required this.isPasswordVisible});
  final VoidCallback onTap;
  final bool isPasswordVisible;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap:onTap,
      child : AnimatedContainer(duration: const Duration(milliseconds: 500),
          child: SvgPicture.asset("assets/images/visible_${isPasswordVisible?"true":"false"}.svg")),
    );
  }
}
