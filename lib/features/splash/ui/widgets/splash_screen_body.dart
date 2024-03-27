import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/core/widgets/custom_app_name.dart';
import 'package:medical_clinic_team13/core/widgets/custom_logo_image.dart';
import 'package:medical_clinic_team13/features/onboarding/ui/screens/onboarding_screen.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: AppColors.secondary,
      duration: const Duration(milliseconds: 3000),
      childWidget: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomLogoImage(
            width: 178,
            height: 226,
          ),
          SizedBox(
            height: 12,
          ),
          CustomAppName(size: 24,),
        ],
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen: const OnboardingScreen(),
    );
  }
}
