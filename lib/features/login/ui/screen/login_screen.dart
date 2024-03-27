import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';
import 'package:medical_clinic_team13/core/widgets/default_text_button.dart';
import 'package:medical_clinic_team13/features/login/ui/widgets/forget_pass_widget.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_logo.dart';
import '../../../../core/widgets/default_button.dart';
import '../../../../core/widgets/default_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60 , left: 21),
                child: Text(
                    'Letis Start with\nsign in',
                    style: AppFonts.font24W600White,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 139.0),
                child: Stack(
                  clipBehavior: Clip.none,
                 children: [
                   Container(
                     width: double.infinity,
                     height: 450,
                     decoration: BoxDecoration(
                         color: AppColors.secondary,
                         borderRadius: BorderRadius.only(topRight: Radius.circular(70),topLeft: Radius.circular(70))
                     ),
                   ),
                   Positioned(
                     bottom: 150,
                     left: 40,
                     right: 40,
                     child: Container(
                       height: 400,
                       width: double.infinity,
                       decoration: BoxDecoration(
                         color: AppColors.primary,
                         border: Border.all(width: 8 , color: AppColors.secondary),
                         borderRadius: BorderRadius.circular(30)
                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             AppLogo(
                               height: 94,
                               width: 74,
                               space: 10,
                               style: AppFonts.font16W400White,
                             ),
                             // verticalSpace(10.0),
                             SizedBox(height: 17,),
                             DefaultTextFormField(
                               labelStyle: AppFonts.font16W400WhiteNormal,
                               style: AppFonts.font16W400WhiteNormal,
                               readOnly: false,
                               labelText: 'Email',
                               isPassword: false,
                               controller: emailController,
                               prefixIcon: Icon(
                                 Icons.email_outlined,
                                 color: AppColors.secondary,
                               ), color: AppColors.secondary,
                             ),
                             SizedBox(height: 15,),
                             DefaultTextFormField(
                               labelStyle: AppFonts.font16W400WhiteNormal,
                               style: AppFonts.font16W400WhiteNormal,
                               readOnly: false,
                               color: AppColors.secondary,
                               labelText: 'Password',
                               isPassword: true,
                               controller: passwordController,
                               prefixIcon: Icon(
                                 Icons.lock,
                                 color: AppColors.secondary,
                               ),
                             ),
                             SizedBox(height: 20,),
                             DefaultButton(text: 'Sign in',style: AppFonts.font22W600blue,color: AppColors.secondary,height: 45,width: double.infinity,),
                             DefaultTextButton(
                               function: () => ForgetPassWidget(context),
                               text: 'Forgot password ?',
                               style: AppFonts.font16W600White,
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                   Positioned(
                     bottom: 10,
                       left: 40,
                       child: Row(
                         children: [
                           Text('Don’t have an account?',
                             style: AppFonts.font16W600blue,
                           ),
                           DefaultTextButton(
                               text: 'Sign Up',
                               style: AppFonts.font16W600deepBlue,
                             function: () => {},
                           ),
                         ],
                       )
                   )
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
