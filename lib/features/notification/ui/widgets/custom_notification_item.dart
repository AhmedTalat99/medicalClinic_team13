import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_assets.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';

class CustomNotificationItem extends StatelessWidget {
  const CustomNotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(
            AppImages.osama,
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "The payment mission has been done for booking an appointment",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppFonts.font14W500TextPrimary,
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                "12:25 AM",
                maxLines: 2,
                style: AppFonts.font14W500TextPrimary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
