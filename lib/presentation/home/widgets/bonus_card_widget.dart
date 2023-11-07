import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/domain/user/user.dart';
import 'package:sajda_shop/repository/core/constants.dart';

class BonusCardWidget extends StatefulWidget {
  const BonusCardWidget({super.key});

  @override
  _BonusCardWidgetState createState() => _BonusCardWidgetState();
}

class _BonusCardWidgetState extends State<BonusCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        // showModalBottomSheet(
        //     context: context,
        //     isScrollControlled: true,
        //     builder: (context) =>
        //         BonusCardScreen(points: user != null ? user.points : 0));
      }),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SizedBox(
          width: double.infinity,
          height: 180,
          child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: Image.asset(
                        "assets/images/bonus_card_background.png",
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ))),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      BlocBuilder<ProfileManagerCubit, ProfileManagerState>(
                        builder: (context, state) {
                          final user = state.user;
                          if (user != null) {
                            return Column(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8),
                                        color: Colors.transparent),
                                    child: ColorFiltered(
                                        colorFilter: const ColorFilter.mode(
                                            Colors.white, BlendMode.srcIn),
                                        child: Image.network(
                                          "${Constants.serverBaseUrl}/${user.qrCode}",
                                          height: 128,
                                          width: 128,
                                        ))),
                                const Text(
                                  "Мой QR",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                const SizedBox(height:8,)
                              ],
                            );
                          }
                          return const SizedBox();
                        },
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: BlocBuilder<ProfileManagerCubit,
                              ProfileManagerState>(
                            builder: (context, state) {
                              final user = state.user;
                              return _bonusTextWidget(user);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _bonusTextWidget(User? user) {
    return IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 4,),
          Text(
            (user != null) ? user.name : "",
            maxLines: 1,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),          Image.asset("assets/images/coins.png",height: 40,),
          Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
            const Text(
              "Ваши бонусы",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: SizedBox(
                          height: 40,
                          child: Text(
                            "${user != null ? user.points.toString() : "0"} с",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 28,

                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],)

        ],
      ),
    );
  }
}
