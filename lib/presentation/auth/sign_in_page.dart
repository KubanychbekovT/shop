import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/application/auth/auth_cubit.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/presentation/auth/forgot_password_email_phase_page.dart';
import 'package:sajda_shop/presentation/auth/sign_up_page.dart';
import 'package:sajda_shop/presentation/auth/widgets/custom_back_button.dart';
import 'package:sajda_shop/presentation/auth/widgets/custom_check_box.dart';
import 'package:sajda_shop/presentation/auth/widgets/obscure_password_widget.dart';
import 'package:sajda_shop/presentation/auth/widgets/social_media_login_row.dart';
import 'package:sajda_shop/presentation/core/main_page.dart';
import 'package:sajda_shop/presentation/core/styles.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';
import 'package:sajda_shop/presentation/core/utils/error_dialog.dart';
import 'package:sajda_shop/presentation/core/widgets/custom_scaffold.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool saveMe = true;
  bool isPasswordVisible = true;
  final validatorKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
                        "Давайте начнем!",
                        style: TextStyle(
                            color: ColorConstants.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "Войдите через социальные сети используя свои данные",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SocialMediaLoginRow(
                        isSignIn: true,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SizedBox(
                        height: 24,
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
                            prefixIcon:
                                SvgPicture.asset("assets/images/mail.svg")),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: passwordController,
                        validator: (value) {
                          if ((value?.length ?? 0) < 5) {
                            return "Пароль должен содержать не менее 5 символов.";
                          }
                          return null;
                        },
                        cursorColor: Colors.black,
                        obscureText: !isPasswordVisible,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: appTextFieldInputDecoration.copyWith(
                            suffixIcon: ObscurePasswordWidget(
                              onTap: () => setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              }),
                              isPasswordVisible: isPasswordVisible,
                            ),
                            hintText: "Пароль",
                            isDense: true,
                            prefixIcon:
                                SvgPicture.asset("assets/images/lock.svg")),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPasswordEmailPhasePage())),
                          child: const Text(
                            "Забыли пароль?",
                            style: TextStyle(
                              color: ColorConstants.darkGrey,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        children: [
                          CustomCheckBox(
                              onCheckStatusChanged: (value) {
                                saveMe = value;
                              },
                              isChecked: saveMe),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text(
                            "Запомнить меня",
                            style: TextStyle(
                                color: ColorConstants.darkGrey, fontSize: 12),
                          )
                        ],
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
                                  context.read<AuthCubit>().signIn(
                                      emailController.text,
                                      passwordController.text);
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
                                      "Вход",
                                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    ));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        },
                        style: appTextButtonStyle,
                        child: const Text(
                          "Регистрация",
                          style: TextStyle(fontSize: 16, color: ColorConstants.primaryColor,fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
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
