import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';

Widget SelectShapeItem(
    {required String title,
    required void Function() Gridonpress,
    required void Function() Listonpress,
    required Color gridColor,
    required Color listColor}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20.0.sp,
            color: Color(0xFF233B55),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.brightGrey,
        ),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.grid_view, color: AppColors.springGreen),
              onPressed: Gridonpress,
            ),
            IconButton(
              icon: Icon(Icons.list, color: AppColors.black),
              onPressed: Listonpress,
            ),
          ],
        ),
      ),
    ],
  );
}
