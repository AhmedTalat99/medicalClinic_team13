
import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/widgets/App_logo.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';
import 'package:medical_clinic_team13/core/widgets/default_button.dart';
import 'package:medical_clinic_team13/core/widgets/default_text_form_field.dart';
import 'package:medical_clinic_team13/features/sign_up/ui/widget/custom_dialog.dart';

class StaticFormField extends StatefulWidget {
  StaticFormField({super.key});

  @override
  State<StaticFormField> createState() => _StaticFormFieldState();
}


class _StaticFormFieldState extends State<StaticFormField> {
  TextEditingController nameController = TextEditingController();

  TextEditingController phonenumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    formKey;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 685,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.primary,
          border: Border.all(
              width: 8, color: AppColors.secondary),
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                AppLogo(
                  height: 94,
                  width: 74,
                  space: 10,
                  style: AppFonts.font16W400White,
                ),
                // verticalSpace(10.0),
                SizedBox(
                  height: 17,
                ),
                DefaultTextFormField(
                  labelStyle: AppFonts.font16W400WhiteNormal,
                  style: AppFonts.font16W400WhiteNormal,
                  readOnly: false,
                  labelText: 'Name',
                  isPassword: false,
                  controller: nameController,
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: AppColors.secondary,
                  ),
                  color: AppColors.secondary,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Name not be empty';
                      }
                      return null;
                    }
                ),
                SizedBox(
                  height: 15,
                ),
                DefaultTextFormField(
                  labelStyle: AppFonts.font16W400WhiteNormal,
                  style: AppFonts.font16W400WhiteNormal,
                  readOnly: false,
                  color: AppColors.secondary,
                  labelText: 'Phone Number',
                  isPassword: false,
                  controller: phonenumberController,
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: AppColors.secondary,
                  ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Phpne Number not be empty';
                      }
                      return null;
                    }
                ),
                SizedBox(
                  height: 15,
                ),
                DefaultTextFormField(
                  labelStyle: AppFonts.font16W400WhiteNormal,
                  style: AppFonts.font16W400WhiteNormal,
                  readOnly: false,
                  color: AppColors.secondary,
                  labelText: 'Email',
                  isPassword: false,
                  controller: emailController,
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: AppColors.secondary,
                  ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email not be empty';
                      }
                      return null;
                    }
                ),
                SizedBox(
                  height: 15,
                ),
                DefaultTextFormField(
                  labelStyle: AppFonts.font16W400WhiteNormal,
                  style: AppFonts.font16W400WhiteNormal,
                  readOnly: false,
                  color: AppColors.secondary,
                  labelText: 'Password',
                  isPassword: true,
                  controller: passwordController,
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: AppColors.secondary,
                  ),
                  suffixIcon: Icon(
                      (Icons.visibility_off_outlined),
                      color: AppColors.secondary),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password not be empty';
                      }
                      return null;
                    }
                ),
                SizedBox(
                  height: 15,
                ),
                DefaultTextFormField(
                  onTap: () {
                    showDialog(context: context, builder: (context){
                      return CustomDialog();
                    });
                  },
                  labelStyle: AppFonts.font16W400WhiteNormal,
                  style: AppFonts.font16W400WhiteNormal,
                  readOnly: true,
                  color: AppColors.secondary,
                  labelText: 'Confirm Password',
                  isPassword: true,
                  controller: confirmpasswordController,
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: AppColors.secondary,
                  ),
                  suffixIcon: Icon(
                      (Icons.visibility_off_outlined),
                      color: AppColors.secondary),

                ),

                SizedBox(
                  height: 50,
                ),
                DefaultButton(
                  function: () {
                    if (formKey.currentState!.validate()) {
                      print(emailController.text);
                      // print(passwordController.text);
                    }

                  },
                  text: 'Sign up',
                  style: AppFonts.font20W600deepBlue,
                  color: AppColors.secondary,
                  height: 45,
                  width: double.infinity,
                ),

              ],
            ),
          ),
        ),
      );

  }
}
