import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/features/login/ui/widgets/reset_pass_widget.dart';

import '../../../../core/theming/consts/app_fonts.dart';
import '../../../../core/widgets/default_button.dart';
import '../../../../core/widgets/default_text_form_field.dart';


TextEditingController emailController = TextEditingController();

void ForgetPassWidget(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0,right: 26,left: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Forget Password',style: AppFonts.font22W600deepBlue,),
              SizedBox(height: 10,),
              Text('Enter your email for verification process we will send 5 digits code to your email',style: AppFonts.font18W400deepBlue,),
              SizedBox(height: 10,),
              Text('Email',style: AppFonts.font22W600deepBlue,),
              SizedBox(height: 10,),
              DefaultTextFormField(
                style: AppFonts.font16W600blue,
                readOnly: false,
                isPassword: false,
                controller: emailController,
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: AppColors.primary,
                ), color: AppColors.primary,
              ),
              SizedBox(height: 25,),
              DefaultButton(
                text: 'Continue',style: AppFonts.font22W600White,color: AppColors.primary, height: 45,width: double.infinity,
                function: ()=> ResetPassWidget(context),
              ),
            ],
          ),
        ),
      );
    },
  );
}
