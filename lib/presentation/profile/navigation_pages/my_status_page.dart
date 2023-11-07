import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';
import 'package:sajda_shop/presentation/core/widgets/custom_scaffold.dart';
import 'package:sajda_shop/presentation/core/widgets/info_message_widget.dart';

class MyStatusPage extends StatelessWidget {
  const MyStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: const Text("Мои статусы"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<ProfileManagerCubit, ProfileManagerState>(
          builder: (context, state) {
            final discountIndex=state.appSettings?.discounts.indexWhere((discount) => discount.discountPercentage==state.user?.discount);
            final user = state.user;
            if (user != null&&discountIndex!=null) {
              if (discountIndex==-1) {
                return const InfoMessageWidget(
                    svgIconName: "star_outlined",
                    message: "У вас нет статусов",
                    detailMessage:
                        "Совсем скоро мы дадим\nперсональную скидку");
              } else {
                final discount=state.appSettings!.discounts[discountIndex];
              final discountPercentage = user.discount;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Какие бонусы\nмы даем?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Вы получаете скидку или накапливаете баллы за каждую покупку",
                    style: TextStyle(
                        color: ColorConstants.greyForIcons, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 64,
                      ),
                      Expanded(
                        child: Text(
                          "Статус",
                          style: TextStyle(
                              color: ColorConstants.greyForIcons,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        width: 128,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Скидка",
                            style: TextStyle(
                                color: ColorConstants.greyForIcons,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 64,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(shape: BoxShape.circle,color: ColorConstants.primaryColor),
                        ),
                      ),
                       Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              discount.name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "От ${discount.minSumOfPurchases} ${context.read<ProfileManagerCubit>().currency}",
                              style: TextStyle(
                                  color: Color(0xffB0B0B0),),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 128,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:  Text(
                            "$discountPercentage%",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
              }
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
