import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/domain/app_settings/branch/branch.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';

class BranchInfoWidget extends StatefulWidget {
  const BranchInfoWidget({super.key, required this.selectedBranchIndex, required this.onSelected});
  final int selectedBranchIndex;
  final Function(int) onSelected;
  @override
  State<BranchInfoWidget> createState() => _BranchInfoWidgetState();
}

class _BranchInfoWidgetState extends State<BranchInfoWidget> {
  late int selectedBranchIndex=widget.selectedBranchIndex;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileManagerCubit, ProfileManagerState>(
  builder: (context, state) {
    final branches=state.appSettings?.branches??[];
    return Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisSize:MainAxisSize.min,children: [
      const Text("Выберите филиал",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
      const SizedBox(height: 12,),
      if(branches.isNotEmpty)...[
      DropdownButtonHideUnderline(
        child: DropdownButton2<Branch>(
          isExpanded: true,
          customButton: Container(
            height: 56,
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    branches[selectedBranchIndex].address,
                    style: const TextStyle(
                      fontSize: 16,
                      color: ColorConstants.secondaryColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SvgPicture.asset("assets/images/arrow_down.svg",height: 24,width: 24,color: ColorConstants.secondaryColor,),
                const SizedBox(
                  width: 16,
                )
              ],
            ),
          ),
          items: branches
              .map((Branch branch) => DropdownMenuItem<Branch>(
            value: branch,
            child: Container(
              height: 56,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                color:  Colors.black,),
              child: Text(
                branch.address,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ))
              .toList(),
          value: branches[selectedBranchIndex],
          onChanged: (value) {
            if (value != null) {
              final index=branches.indexWhere((element) => element.id==value.id);
              widget.onSelected(index);
              setState(() {
                selectedBranchIndex = index;
              });
            }
          },
          dropdownStyleData: DropdownStyleData(
            // : const EdgeInsets.symmetric(horizontal: 20),
            maxHeight: 200,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.transparent),
            offset: const Offset(0, 0),
            elevation: 0,
            scrollbarTheme: ScrollbarThemeData(
              radius: const Radius.circular(40),
              thickness: MaterialStateProperty.all(6),
              thumbVisibility: MaterialStateProperty.all(true),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 64,
            padding: EdgeInsets.symmetric(vertical: 4),
          ),
        ),
      ),
        const SizedBox(height: 16,),
        Row(children: [
          SvgPicture.asset("assets/images/phone.svg",height: 28,width: 28,color: ColorConstants.greyForIcons,),
          const SizedBox(width: 20,),
          Text(branches[selectedBranchIndex].phone),
        ],),
        const SizedBox(height: 16),
        Row(crossAxisAlignment:CrossAxisAlignment.start,children: [
          SvgPicture.asset("assets/images/location.svg",height: 28,width: 28,color: ColorConstants.greyForIcons,),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4,),
              Text(branches[selectedBranchIndex].address,style: const TextStyle(fontWeight: FontWeight.w500),),
              const SizedBox(height: 4,),
              Text(getOpenStatusAndTime(branches[selectedBranchIndex]),style: const TextStyle(color: Color(0xff848484),fontSize: 12),)
            ],
          ),
        ],),
        const SizedBox(height: 8,),
        const Divider()
      ]

    ],);
  },
);
  }
  String getOpenStatusAndTime(Branch branch){
    final currentWeekday=DateTime.now().weekday;
    late StoreInfo storeInfo;
    switch(currentWeekday){
      case 1:
        storeInfo=branch.monday;
        break;
      case 2:
        storeInfo=branch.tuesday;
        break;
      case 3:
        storeInfo = branch.wednesday;
        break;
      case 4:
        storeInfo = branch.thursday;
        break;
      case 5:
        storeInfo = branch.friday;
        break;
      case 6:
        storeInfo = branch.saturday;
        break;
      case 7:
        storeInfo = branch.sunday;
        break;
    }
    final openingDateTime=getDateTimeFromString(storeInfo.start);
    final closingDateTime=getDateTimeFromString(storeInfo.end);
    final isOpen=openingDateTime.isBefore(DateTime.now())&&closingDateTime.isAfter(DateTime.now());
    return "${isOpen?"Открыто":"Закрыто"} ${storeInfo.start} - ${storeInfo.end}";
  }
  DateTime getDateTimeFromString(String timeString){
    List<String> timeParts = timeString.split(':');
    int hours = int.parse(timeParts[0]);
    int minutes = int.parse(timeParts[1]);

    TimeOfDay timeOfDay = TimeOfDay(hour: hours, minute: minutes);

    DateTime now = DateTime.now();
    DateTime dateTime = DateTime(now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
    return dateTime;
  }
}
