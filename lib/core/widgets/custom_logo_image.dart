

import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_assets.dart';

class CustomLogoImage extends StatelessWidget {
  const CustomLogoImage({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.appLogo,
      width: width,
      height: height,
    );
  }
}
