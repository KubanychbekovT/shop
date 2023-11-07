import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/presentation/core/widgets/custom_scaffold.dart';
import 'package:sajda_shop/presentation/core/widgets/info_message_widget.dart';

class OrderOverviewPage extends StatefulWidget {
  const OrderOverviewPage({super.key});

  @override
  State<OrderOverviewPage> createState() => _OrderOverviewPageState();
}

class _OrderOverviewPageState extends State<OrderOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: const Text("Уведомления"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<ProfileManagerCubit, ProfileManagerState>(
          builder: (context, state) {
            final user = state.user;

            if (user != null) {
              if (user.discount == 0) {
                return const InfoMessageWidget(
                    svgIconName: "bell_broken_outlined",
                    message: "Уведомлений нет",
                    detailMessage:
                    "Полученные уведомления будут отображаться здесь");
              }
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
