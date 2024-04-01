import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';

import '../../../../core/theming/consts/app_colors.dart';
import '../../../../core/widgets/default_button.dart';
import '../../../../core/widgets/default_text_form_field.dart';

TextEditingController passwordController = TextEditingController();
TextEditingController passwordConfirmController = TextEditingController();


void ResetPassWidget(BuildContext context) {
  showModalBottomSheet(
    context: context,
    useRootNavigator: true,
    isScrollControlled: true,
    enableDrag: true,
    builder: (BuildContext context) {
      return Container(
        height: 550,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
        ),
        child:
        Padding(
          padding: const EdgeInsets.only(top: 30.0,right: 26,left: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Reset Password',style: AppFonts.font32W600deepBlue,),
              SizedBox(height: 10,),
              Text('Enter the code you receive in mail and set the new password for your account so you can login and access all the features',style: AppFonts.font16W400deepBlue,),
              SizedBox(height: 10,),
              Text('Enter the 5 digits code',style: AppFonts.font18W600deepBlue,),
              SizedBox(height: 10,),
              DefaultTextFormField(
                style: AppFonts.font16W600blue,
                readOnly: false,
                isPassword: false,
                controller: passwordController,
                color: AppColors.primary,
              ),
              SizedBox(height: 10,),
              Text('Password',style: AppFonts.font18W600deepBlue,),
              SizedBox(height: 10,),
              DefaultTextFormField(
                style: AppFonts.font16W600blue,
                readOnly: false,
                isPassword: true,
                controller: passwordController,
                color: AppColors.primary,
                suffixIcon: Icon(Icons.visibility_off_outlined,color: AppColors.primary,),
              ),
              SizedBox(height: 10,),
              Text('Confirm Password',style: AppFonts.font18W600deepBlue,),
              SizedBox(height: 10,),
              DefaultTextFormField(
                style: AppFonts.font16W600blue,
                readOnly: false,
                isPassword: true,
                controller: passwordConfirmController,
                color: AppColors.primary,
                suffixIcon: Icon(Icons.visibility_off_outlined,color: AppColors.primary,),
              ),
              SizedBox(height: 25,),
              DefaultButton(
                text: 'Reset Password',style: AppFonts.font22W600White,color: AppColors.primary, height: 45,width: double.infinity,
                function: ()=> ResetPassWidget(context),
              ),
            ],
          ),
        ),
      );
    },
  );
}
