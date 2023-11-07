import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';

class InfoMessageWidget extends StatelessWidget {
  const InfoMessageWidget({super.key, required this.svgIconName, required this.message, required this.detailMessage,  this.widgetList});
  final String svgIconName;
  final String message;
  final String detailMessage;
  final List<Widget>? widgetList;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/images/$svgIconName.svg",color: ColorConstants.greyForIcons,height: 64,width: 64,),
          const SizedBox(height: 8,),
           Text(
            message,
            style: const TextStyle(
                color: ColorConstants.secondaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8,),
           Text(
            detailMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color(0xffB0B0B0),
                fontSize: 16),
          ),
          if(widgetList!=null)...[
            ...widgetList!,
          ],
          const SizedBox(height: 56,)
        ],
      ),
    );
  }
}
