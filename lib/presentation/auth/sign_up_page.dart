import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sajda_shop/application/auth/auth_cubit.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/presentation/auth/widgets/custom_back_button.dart';
import 'package:sajda_shop/presentation/auth/widgets/custom_check_box.dart';
import 'package:sajda_shop/presentation/auth/widgets/social_media_login_row.dart';
import 'package:sajda_shop/presentation/core/main_page.dart';
import 'package:sajda_shop/presentation/core/styles.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';
import 'package:sajda_shop/presentation/core/utils/error_dialog.dart';
import 'package:sajda_shop/presentation/core/utils/input_formatters/phone_input_formatter.dart';
import 'package:sajda_shop/presentation/core/widgets/custom_scaffold.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool saveMe = true;
  final validatorKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();
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
                        "Зарегистрируйтесь через социальные сети или заполните форму, чтобы продолжить.",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SocialMediaLoginRow(isSignIn: false),
                      const SizedBox(height: 40),
                      TextFormField(
                        controller: nameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "ФИО не может быть пустым";
                          }
                          return null;
                        },
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.name,
                        decoration: appTextFieldInputDecoration.copyWith(
                            hintText: "ФИО",
                            isDense: true,
                            prefixIcon:
                                SvgPicture.asset("assets/images/profile.svg")),
                      ),
                      const SizedBox(
                        height: 8,
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
                        controller: phoneNumberController,
                        validator: (value) {
                          if ((phoneInputFormatter.getMask()!.length) !=
                              phoneNumberController!.text.length) {
                            return "Заполните поле полностью";
                          }
                          return null;
                        },
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        inputFormatters: [phoneInputFormatter],
                        decoration: appTextFieldInputDecoration.copyWith(
                            hintText: "Телефон",
                            isDense: true,
                            prefixIcon:
                                SvgPicture.asset("assets/images/phone.svg")),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: passwordController,
                        validator: (value) {
                          if ((value?.length ?? 0) < 6) {
                            return "Пароль должен содержать не менее 6 символов.";
                          }
                          if (!containsUppercase(value!)) {
                            return "Пароль должен содержать не менее одной заглавной буквы.";
                          }
                          if (!RegExp(r'\d').hasMatch(value)) {
                            return "Пароль должен содержать не менее одной цифры.";
                          }
                          if (!RegExp(r'[!@#\$%^&*()_+{}\[\]:;<>,.?~\\|=]')
                              .hasMatch(value)) {
                            return "Пароль должен содержать не менее одного спец символа.";
                          }
                          return null;
                        },
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: appTextFieldInputDecoration.copyWith(
                            hintText: "Пароль",
                            isDense: true,
                            prefixIcon:
                                SvgPicture.asset("assets/images/lock.svg")),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
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
                          // child: Text(
                          //   "Регистрируясь, вы соглашаетесь с условиями обслуживания и политикой конфиденциальности.",
                          //   style: TextStyle(
                          //       color: ColorConstants.darkGrey, fontSize: 12),
                          // ),
                          const Expanded(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Условиями обслуживания ",
                                      style: TextStyle(
                                          color: ColorConstants.primaryColor)),
                                  TextSpan(
                                    text: "и ",
                                  ),
                                  TextSpan(
                                      text: "Политикой конфиденциальности.",
                                      style: TextStyle(
                                          color: ColorConstants.primaryColor)),
                                ],
                                text: "Регистрируясь, вы соглашаетесь c ",
                              ),
                              style: TextStyle(
                                  color: ColorConstants.darkGrey, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          context.read<AuthCubit>().state.maybeMap(
                              loading: (_) {},
                              orElse: () {
                                final isValid =
                                    validatorKey.currentState!.validate();
                                if (isValid) {
                                  context.read<AuthCubit>().signUp(
                                      nameController.text,
                                      emailController.text,
                                      phoneNumberController.text,
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
                                      "Регистрация",
                                      style: TextStyle(fontSize: 16),
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

  bool containsUppercase(String text) {
    for (var char in text.runes) {
      if (isUppercase(String.fromCharCode(char))) {
        return true;
      }
    }
    return false;
  }

  bool isUppercase(String char) {
    return char == char.toUpperCase();
  }
}
