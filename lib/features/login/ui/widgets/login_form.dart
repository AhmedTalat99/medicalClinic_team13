import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/consts/app_colors.dart';
import '../../../../core/theming/consts/app_fonts.dart';
import '../../../../core/widgets/app_logo.dart';
import '../../../../core/widgets/default_button.dart';
import '../../../../core/widgets/default_text_button.dart';
import '../../../../core/widgets/default_text_form_field.dart';
import '../../logic/login_cubit.dart';
import 'forget_pass_widget.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  var formKey;
  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
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
            validator: (value){
              if(value!.isEmpty)
              {
                return 'Please Enter Email';
              }
            },
            labelStyle: AppFonts.font16W400WhiteNormal,
            style: AppFonts.font16W400WhiteNormal,
            readOnly: false,
            labelText: 'Email',
            isPassword: false,
            controller: emailController,
            prefixIcon: Icon(
              Icons.email_outlined,
              color: AppColors.secondary,
            ),
            color: AppColors.secondary,
          ),
          SizedBox(
            height: 15,
          ),
          DefaultTextFormField(
            validator: (value){
              if(value!.isEmpty)
              {
                return 'Please Enter Password';
              }
            },
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
          SizedBox(
            height: 20,
          ),
          DefaultButton(
            text: 'Sign in',
            style: AppFonts.font22W600blue,
            color: AppColors.secondary,
            height: 45,
            width: double.infinity,
            function: (){
              if(formKey.currentState!.validate()){
                BlocProvider.of<LoginCubit>(context).userLogin(
                  email: emailController.text,
                  password: passwordController.text,
                );
                print(BlocProvider.of<LoginCubit>(context).loginModel!.message);
              }
            },
          ),
          DefaultTextButton(
            function: () => ForgetPassWidget(context),
            text: 'Forgot password ?',
            style: AppFonts.font16W600White,
          ),
        ],
      ),
    );
  }
}
