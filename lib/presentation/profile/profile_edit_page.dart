import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sajda_shop/application/profile/profile_manager_cubit.dart';
import 'package:sajda_shop/domain/user/user.dart';
import 'package:sajda_shop/presentation/core/styles.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';
import 'package:sajda_shop/presentation/core/utils/input_formatters/date_input_formatter.dart';
import 'package:sajda_shop/presentation/core/utils/input_formatters/phone_input_formatter.dart';
import 'package:sajda_shop/presentation/core/widgets/custom_scaffold.dart';
import 'package:sajda_shop/presentation/profile/widgets/gender_switcher.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  _ProfileEditPageState createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  final validatorKey = GlobalKey<FormState>();
  TextEditingController? nameController;
  TextEditingController? emailController;
  TextEditingController? phoneNumberController;
  TextEditingController? newPasswordController;
  TextEditingController? birthDayController;
  String? gender;

  void initializeUserDetails(User user) {
    if (nameController == null) {
      nameController = TextEditingController(text: user.name);
      emailController = TextEditingController(text: user.email);
      phoneNumberController = TextEditingController(
          text: user.phone == null
              ? ""
              : phoneInputFormatter.maskText(user.phone!));
      newPasswordController = TextEditingController();
      birthDayController = TextEditingController(
          text: user.birthDate == null
              ? ""
              : DateFormat("dd.MM.yyyy").format(user.birthDate!));
      gender = user.gender.isEmpty ? "Male" : user.gender;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40)
            .copyWith(top: 20),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    final user = context.read<ProfileManagerCubit>().state.user;
                    if (user != null) {
                      final isValid = validatorKey.currentState!.validate();
                      if (isValid) {
                        final updateUser = user.copyWith(
                            name: nameController!.text,
                            phone: phoneNumberController!.text,
                            email: emailController!.text,
                            password: newPasswordController!.text,
                            birthDate: (birthDayController!.text.isNotEmpty)
                                ? DateFormat("dd.MM.yyyy")
                                    .parse(birthDayController!.text)
                                : null,
                            gender: gender!);
                        context
                            .read<ProfileManagerCubit>()
                            .updateProfile(updateUser);
                      }
                    }
                  },
                  style: appElevatedButtonStyle,
                  child: const Text('Сохранить')),
            ),
            const SizedBox(width: 20),
            Expanded(
                child: TextButton(
              style: appTextButtonStyle,
              onPressed: () => Navigator.pop(context),
              child: const Text("Отмена",style: TextStyle(color: ColorConstants.primaryColor),),
            ))
          ],
        ),
      ),
      appBar: AppBar(
          title: const Text(
        "Редактировать профиль",
      )),
      body: BlocBuilder<ProfileManagerCubit, ProfileManagerState>(
        buildWhen: (p, c) {
          return p.user != c.user;
        },
        builder: (context, state) {
          if (state.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.user == null) {
            return const SizedBox();
          }
          User user = state.user!;
          initializeUserDetails(user);
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: validatorKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey.shade200,
                        child: const Icon(
                          Icons.person_outline_outlined,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('ФИО', style: TextStyle(fontSize: 16.0)),
                        const SizedBox(height: 8),
                        TextField(
                          decoration: appTextFieldInputDecoration,
                          controller: nameController,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Почта', style: TextStyle(fontSize: 16.0)),
                        const SizedBox(height: 8),
                        TextField(
                          decoration: appTextFieldInputDecoration,
                          controller: emailController,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Телефон', style: TextStyle(fontSize: 16.0)),
                        const SizedBox(height: 8),
                        TextFormField(
                          validator: (value) {
                            if ((phoneInputFormatter.getMask()!.length) !=
                                phoneNumberController!.text.length) {
                              return "Заполните поле полностью";
                            }
                            return null;
                          },
                          inputFormatters: [phoneInputFormatter],
                          decoration: appTextFieldInputDecoration,
                          controller: phoneNumberController,
                        ),
                      ],
                    ),
                    // const SizedBox(height: 20),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     const Text('Пароль', style: TextStyle(fontSize: 16.0)),
                    //     const SizedBox(height: 15),
                    //     TextFormField(
                    //       validator: (value) {
                    //         if (value!.isNotEmpty&&((value!.length) < 5)) {
                    //           return "Пароль должен содержать не менее 5 символов.";
                    //         }
                    //         return null;
                    //       },
                    //       decoration: const InputDecoration(
                    //         labelText: 'Напишите новый пароль',
                    //         border: OutlineInputBorder(),
                    //       ),
                    //       controller: newPasswordController,
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('День рождения',
                            style: TextStyle(fontSize: 16.0)),
                        const SizedBox(height: 8),
                        TextFormField(
                          validator: (value) {
                            if (value!.isNotEmpty &&
                                (dateInputFormatter.getMask()!.length) !=
                                    value.length) {
                              return "Заполните поле полностью";
                            }
                            return null;
                          },
                          inputFormatters: [dateInputFormatter],
                          decoration: appTextFieldInputDecoration,
                          controller: birthDayController,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Пол', style: TextStyle(fontSize: 16.0)),
                        const SizedBox(height: 8),
                        GenderSwitcher(
                            value: gender,
                            onChanged: (newGender) => gender = newGender)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
