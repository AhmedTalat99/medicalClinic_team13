import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';
import 'package:medical_clinic_team13/core/widgets/default_text_button.dart';
import 'package:medical_clinic_team13/features/sign_up/ui/widget/static_form_field.dart';
import 'package:medical_clinic_team13/features/sign_up/ui/widget/static_text.dart';



class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StaticText(),
              SizedBox(height: 230),
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
                      top: -190,
                      left: 40,
                      right: 40,
                      child: StaticFormField(),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 90,
                        child: Row(
                          children: [
                            Text(
                              'Have already an account?',
                              style: AppFonts.font16W600blue,
                            ),
                            DefaultTextButton(
                              text: 'Sign in',
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
  }
}
