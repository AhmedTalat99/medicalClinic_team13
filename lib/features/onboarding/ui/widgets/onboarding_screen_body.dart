import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_assets.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/features/home/ui/screen/home_Screen.dart';
import 'package:medical_clinic_team13/features/onboarding/ui/widgets/custom_onboarding_background.dart';


class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      headerBackgroundColor: AppColors.primary,
      pageBackgroundColor: AppColors.primary,
      controllerColor: AppColors.primary,
      finishButtonText: 'Start',
      onFinish: () {
        Navigator.push(
          context,


          MaterialPageRoute(
            builder: (context) {
              return const HomeScreen();
            },
          ),
        );
      },
      finishButtonStyle: const FinishButtonStyle(
        backgroundColor: AppColors.primary,
      ),
      leading: TextButton(
        onPressed: () {},
        child: const Text(
          'AR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      trailing: const Text(''),
      totalPage: 3,
      speed: 1.8,
      centerBackground: true,
      background:  [
        CustomOnboardingBackground(
          image: AppAssets.onboarding1,
          title: 'Choose your doctor',
          subtitle: 'Application provide you with a lot of'
              ' experienced doctors you can see'
              ' these profile and choose one you'
              ' want to appointment with him.',
        ),
        CustomOnboardingBackground(
          image: AppAssets.onboarding2,
          width: 290,
          title: 'Choose date and time',
          subtitle: 'The application can help you choose '
              'the appropriate date and time for you'
              ' and the selected doctor.',
        ),
        CustomOnboardingBackground(
          image: AppAssets.onboarding3,
          title: 'Choose your doctor',
          subtitle: "Once you access the profile of doctor"
              " you selected you can communicate"
              " with him and send any message ",
        ),
      ],
      pageBodies: const [
        SizedBox(),
        SizedBox(),
        SizedBox(),
      ],
    );
  }
}
