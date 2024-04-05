import 'package:flutter/material.dart';

import '../theming/consts/app_assets.dart';
import '../theming/consts/app_colors.dart';

class ImageCircle extends StatelessWidget {
  const ImageCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 110, // Specify the width of the circle
          height: 110, // Specify the height of the circle
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primary, // Set the background color to blue
          ),
        ),
        ClipOval(
          child: Image.asset(
            AppImages.ammar,
            width: 90, // Specify the width of the image
            height: 90, // Specify the height of the image
            fit: BoxFit.cover, // This ensures the image covers the entire space without distortion
          ),
        ),
      ],
    );
  }
}
