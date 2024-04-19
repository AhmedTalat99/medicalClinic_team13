import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';

import '../../../../core/theming/consts/app_colors.dart';
import '../../../../core/theming/consts/size_config.dart';

class Rated extends StatelessWidget {
  Rated({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.27,
      height: SizeConfig.screenHeight * 0.15,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.secondary,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(children: [
        Text(
          '4.8',
          style: AppFonts.font16W400White.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        Icon(
          Icons.star,
          color: AppColors.star,
        ),
      ]),
    );
  }
}
