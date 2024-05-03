import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_assets.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';

class CustomChatsItem  extends StatelessWidget {
  const CustomChatsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dr: Osama ali",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppFonts.font20W600deepBlue,
                  ),
                  Text(
                    "12:25 AM",
                    maxLines: 2,
                    style: AppFonts.font14W500TextPrimary,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Can i help you ?",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppFonts.font18W400deepBlue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
