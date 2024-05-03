import 'package:flutter/material.dart';

class CustomOnboardingImage extends StatelessWidget {
  const CustomOnboardingImage({
    super.key,
    required this.image,
    this.height = 360,
    this.width = 360,
  });

  final String image;
  final double height;

  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: height,
      width: width,
    );
  }
}
