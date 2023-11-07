import 'package:flutter/material.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.sectionName,  this.watchAllDestinationWidget, this.onWatchAllTapped});
  final String sectionName;
  final Widget? watchAllDestinationWidget;
  final VoidCallback? onWatchAllTapped;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Expanded(
            child: Text(
              sectionName,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          InkWell(
            onTap: onWatchAllTapped ?? () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      watchAllDestinationWidget!));
            },
            child: Container(
              padding: const EdgeInsets.only(
                bottom: 1, // Space between underline and text
              ),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: ColorConstants.primaryColor,
                    width: 1.0, // Underline thickness
                  ))
              ),
              child: const Text(
                'смотреть все',
                style: TextStyle(
                    color: ColorConstants.primaryColor, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
