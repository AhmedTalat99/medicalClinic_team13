import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';
import 'package:medical_clinic_team13/core/widgets/default_text_button.dart';
import 'package:medical_clinic_team13/core/widgets/image_circle.dart';

import '../../../../core/widgets/default_app_bar.dart';
import '../widgets/custom_line.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        isCenter: true,
        icon: Icons.arrow_back_ios_new_outlined,
        function: () => Navigator.pop(context),
        text: 'Profile Details',
        action: [
          DefaultTextButton(text: 'Edit', style: AppFonts.font24W600White,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: ImageCircle()
            ),
            SizedBox(height: 35,),
            Text('Full Name',style: AppFonts.font20W500Grey,),
            CustomLine(),
            Text('Ammar Ahmed',style: AppFonts.font16W400Black,),
            SizedBox(height: 15,),
            Text('Phone number',style: AppFonts.font20W500Grey,),
            CustomLine(),
            Text('01078654434',style: AppFonts.font16W400Black,),
            SizedBox(height: 15,),
            Text('Email',style: AppFonts.font20W500Grey,),
            CustomLine(),
            Text('ammar21@gmail.com',style: AppFonts.font16W400Black,),
          ],
        ),
      ),
    );
  }
}
