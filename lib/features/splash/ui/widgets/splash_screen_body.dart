import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_assets.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_strings.dart';
import 'package:medical_clinic_team13/features/onboarding/ui/screens/onboarding_screen.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {

    return FlutterSplashScreen.fadeIn(
      backgroundColor: AppColors.secondary,
      duration: const Duration(milliseconds: 3000),
      childWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.appLogo,
            width: 178,
            height: 226,
          ),
          const SizedBox(
           height: 12,
          ),
          const Text(
            AppStrings.splashName,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
              fontFamily: 'Peralta',
            ),
          ),
        ],
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen: const OnboardingScreen(),
    );
  }
}
