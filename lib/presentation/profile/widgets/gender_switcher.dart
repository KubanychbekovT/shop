import 'package:flutter/material.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';

class GenderSwitcher extends StatefulWidget {
  const GenderSwitcher({super.key,required this.value, required this.onChanged});
  final String? value;
  final Function(String?) onChanged;
  @override
  State<GenderSwitcher> createState() => _GenderSwitcherState();
}

class _GenderSwitcherState extends State<GenderSwitcher> {
  late String? gender=widget.value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                gender = "Male";
                widget.onChanged(gender);
              });
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: gender=="Male"?const Color(0xffF5F6FF):Colors.white,
              side: BorderSide(
                color: gender == 'Male'
                    ? ColorConstants.primaryColor
                    : const Color(0xffE3E3E3),
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
                  'Мужчина',
                  style: TextStyle(
                    color:  Colors.black
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
                gender = "Female";
                widget.onChanged(gender);
              });
            },
            style:  ElevatedButton.styleFrom(
              elevation: 0,
              primary: gender=="Female"?const Color(0xffF5F6FF):Colors.white,
              side: BorderSide(
                color: gender == 'Female'
                    ? ColorConstants.primaryColor
                    : const Color(0xffE3E3E3),
                width: 1,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const SizedBox(
              height: 40,
              width: 130,
              child: Center(
                child: Text(
                  'Женщина',
                  style: TextStyle(
                      color:  Colors.black
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
