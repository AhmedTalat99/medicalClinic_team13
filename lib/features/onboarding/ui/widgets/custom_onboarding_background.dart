import 'package:flutter/material.dart';
import 'custom_onboarding_image.dart';

class CustomOnboardingBackground extends StatelessWidget {
  const CustomOnboardingBackground(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      this.width = 360});

  final String image;
  final String title;
  final String subtitle;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
         SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        CustomOnboardingImage(
          image: image,
          width: width,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
