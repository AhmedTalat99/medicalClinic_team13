import 'package:flutter/material.dart';

import '../../../../core/theming/consts/app_colors.dart';
import '../../../../core/theming/consts/app_fonts.dart';

class Rated extends StatelessWidget {
  Rated({super.key,required this.review});
  final String review;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 28,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.secondary,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            review,
            style: AppFonts.font16W400WhiteNormal.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 12),
          Icon(
            Icons.star,
            color: AppColors.star,
          ),
        ],
      ),
    );
  }
}
