import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/application/auth/auth_cubit.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/presentation/auth/widgets/custom_back_button.dart';
import 'package:sajda_shop/presentation/core/main_page.dart';
import 'package:sajda_shop/presentation/core/styles.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';
import 'package:sajda_shop/presentation/core/utils/error_dialog.dart';
import 'package:sajda_shop/presentation/core/widgets/custom_scaffold.dart';

class ForgotPasswordEmailPhasePage extends StatefulWidget {
  const ForgotPasswordEmailPhasePage({super.key});

  @override
  State<ForgotPasswordEmailPhasePage> createState() =>
      _ForgotPasswordEmailPhasePageState();
}

class _ForgotPasswordEmailPhasePageState
    extends State<ForgotPasswordEmailPhasePage> {
  final validatorKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Builder(builder: (context) {
        return BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            state.maybeMap(
                success: (_) {
                  context.read<ProfileManagerCubit>().loadProfile();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const MainPage()),
                      (route) => false);
                },
                fail: (state) {
                  AppDialog.showError(state.errorText);
                },
                orElse: () {});
          },
          child: CustomScaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(leading: const CustomBackButton(isKeyboardStyle: true,),),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Form(
                  key: validatorKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "Восстановление пароля",
                        style: TextStyle(
                            color: ColorConstants.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          final bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value!);
                          if (!emailValid) {
                            return "Введите корректную почту";
                          }
                          return null;
                        },
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.emailAddress,
                        decoration: appTextFieldInputDecoration.copyWith(
                            hintText: "Почта",
                            isDense: true,
                            prefixIcon: SvgPicture.asset(
                              "assets/images/mail.svg",
                              color: MaterialStateColor.resolveWith((states) {
                                if (states.contains(MaterialState.error)) {
                                  return Colors.red;
                                }
                                return ColorConstants.lightGrey;
                              }),
                            )),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Expanded(child: SizedBox()),
                      ElevatedButton(
                        onPressed: () {
                          context.read<AuthCubit>().state.maybeMap(
                              loading: (_) {},
                              orElse: () {
                                final isValid =
                                    validatorKey.currentState!.validate();
                                if (isValid) {
                                  //   context.read<AuthCubit>().signIn(
                                  //       emailController.text,
                                  //       passwordController.text);
                                }
                              });
                        },
                        style: appElevatedButtonStyle,
                        child: BlocBuilder<AuthCubit, AuthState>(
                          builder: (context, state) {
                            return state.maybeMap(
                                loading: (_) => const Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    ),
                                orElse: () => const Text(
                                      "Далее",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    ));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              )),
        );
      }),
    );
  }
}
