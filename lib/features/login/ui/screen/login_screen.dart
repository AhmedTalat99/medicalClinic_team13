import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';
import 'package:medical_clinic_team13/core/widgets/default_text_button.dart';
import 'package:medical_clinic_team13/features/login/ui/widgets/forget_pass_widget.dart';
import 'package:medical_clinic_team13/features/login/ui/widgets/login_form.dart';

import '../../../../core/widgets/app_logo.dart';
import '../../../../core/widgets/default_button.dart';
import '../../../../core/widgets/default_text_form_field.dart';
import '../../logic/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.primary,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60, left: 21),
                      child: Text(
                        'Letis Start with\nsign in',
                        style: AppFonts.font24W600White,
                      ),
                    ),
                    SizedBox(height: 150),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: AppColors.secondary,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(70),
                                    topLeft: Radius.circular(70))),
                          ),
                          Positioned(
                            top: -100,
                            left: 40,
                            right: 40,
                            child: Container(
                              height: 400,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  border: Border.all(
                                      width: 8, color: AppColors.secondary),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: LoginForm(),
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 10,
                              left: 40,
                              child: Row(
                                children: [
                                  Text(
                                    'Don’t have an account?',
                                    style: AppFonts.font16W600blue,
                                  ),
                                  DefaultTextButton(
                                    text: 'Sign Up',
                                    style: AppFonts.font16W600deepBlue,
                                    function: () => {},
                                  ),
                                ],
                              ))
                        ],
                      ),
                    )
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
