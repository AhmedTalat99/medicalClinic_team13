import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/features/home/ui/screen/home_Screen.dart';
import 'package:medical_clinic_team13/features/splash/ui/screens/splash_screen.dart';
import '../theming/consts/app_strings.dart';

abstract class AppRouter {
  static const kSplash = '/';

  static const kOnboarding1View = '/onboarding1';
  static const kOnboarding2View = '/onboarding2';
  static const kOnboarding3View = '/onboarding3';

  static const kHomeUser = '/home';

  static const kForgetPassword = '/forgetPassword';
  static const kResetPassword = '/Reset Password';
  
  static const kLogin = '/login';
  static const ksignup = '/signup';

  static const kProfileDetails = '/profile Details';

  static Route<dynamic>? router(RouteSettings settings) {
    switch (settings.name) {
      case kSplash:
        return MaterialPageRoute(builder: (context) {
          return const SplashScreen(); //replace this Scaffold with a Splash Screen
        });

      case kHomeUser:
        return MaterialPageRoute(builder: (context) {
          return const HomeScreen(); //replace this Scaffold with a Home Screen
        });



      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text(AppStrings.notFound),
            ),
          );
        });
    }
  }
}
