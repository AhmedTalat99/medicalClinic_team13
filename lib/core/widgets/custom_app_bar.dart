import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      height: 80,
      width: double.infinity,
      child: SafeArea(
        child: Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.secondary,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppFonts.font32W600deepWhite,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
