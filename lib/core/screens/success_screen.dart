import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.message, required this.widget});

  final String message;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundColor: AppColors.primary,
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 100,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            const Text(
              "Congratulations",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              message,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimary,
              ),

            ),
            widget ,
          ],
        ),
      ),
    );
  }
}
