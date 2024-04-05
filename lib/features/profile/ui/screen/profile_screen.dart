import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_assets.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/features/profile_details/ui/screen/profile_details.dart';


import '../../../../core/theming/consts/app_fonts.dart';
import '../../../../core/widgets/image_circle.dart';
import '../widgets/main_row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 20),
          child: Column(
            children: [
              Text('Profile',style: AppFonts.font22W600deepBlue,),
              SizedBox(height: 15,),
              ImageCircle(),
              SizedBox(height: 15,),
              Text('Ammar Ahmed',style: AppFonts.font22W600deepBlue,),
              SizedBox(height: 30,),
              MainRow(text: 'History',icon: Icons.history,),
              SizedBox(height: 10,),
              MainRow(text: 'Profile Detailes',icon: Icons.person_pin_circle_outlined,
                function: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileDetails(),)),),
              SizedBox(height: 10,),
              MainRow(text: 'Chats',icon: Icons.chat,),
              SizedBox(height: 10,),
              MainRow(text: 'Settings',icon: Icons.settings,),
              SizedBox(height: 10,),
              MainRow(text: 'Help',icon: Icons.help_outline,),
              SizedBox(height: 10,),
              MainRow(text: 'Logout',icon: Icons.logout,),

            ],
          ),
        ),
      ),
    );
  }
}
