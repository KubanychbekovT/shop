import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/domain/app_settings/delivery/delivery.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';

class DeliveryTypeDropdown extends StatefulWidget {
  const DeliveryTypeDropdown(
      {super.key,
      required this.selectedDeliveryIndex,
      required this.onSelected});

  final int selectedDeliveryIndex;
  final Function(int) onSelected;

  @override
  State<DeliveryTypeDropdown> createState() => _DeliveryTypeDropdownState();
}

class _DeliveryTypeDropdownState extends State<DeliveryTypeDropdown> {
  late int selectedDeliveryIndex = widget.selectedDeliveryIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileManagerCubit, ProfileManagerState>(
      builder: (context, state) {
        final deliveryDescription = context
                .read<ProfileManagerCubit>()
                .state
                .appSettings
                ?.appMode
                .deliveryDescription ??
            "";
        final deliveries = state.appSettings?.deliveries ?? [];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Доставка",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            const SizedBox(
              height: 12,
            ),
            if (deliveryDescription.isNotEmpty) ...[
              Text(
                deliveryDescription,
                style: const TextStyle(color: ColorConstants.greyForIcons),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
            if (deliveries.isNotEmpty) ...[
              DropdownButtonHideUnderline(
                child: DropdownButton2<Delivery>(
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
                            "${deliveries[selectedDeliveryIndex].name} - ${deliveries[selectedDeliveryIndex].price} ${context.read<ProfileManagerCubit>().currency}",
                            style: const TextStyle(
                              fontSize: 16,
                              color: ColorConstants.secondaryColor,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SvgPicture.asset(
                          "assets/images/arrow_down.svg",
                          height: 24,
                          width: 24,
                          color: ColorConstants.secondaryColor,
                        ),
                        const SizedBox(
                          width: 16,
                        )
                      ],
                    ),
                  ),
                  items: deliveries
                      .map((Delivery delivery) => DropdownMenuItem<Delivery>(
                            value: delivery,
                            child: Container(
                              height: 56,
                              width: double.infinity,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.black,
                              ),
                              child: Text(
                                "${deliveries[selectedDeliveryIndex].name} - ${deliveries[selectedDeliveryIndex].price} ${context.read<ProfileManagerCubit>().currency}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                  value: deliveries[selectedDeliveryIndex],
                  onChanged: (value) {
                    if (value != null) {
                      final index = deliveries
                          .indexWhere((element) => element.id == value.id);
                      widget.onSelected(index);
                      setState(() {
                        selectedDeliveryIndex = index;
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
            ]
          ],
        );
      },
    );
  }
}
