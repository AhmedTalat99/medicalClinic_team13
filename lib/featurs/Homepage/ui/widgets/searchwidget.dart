import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';

Widget Search_widget() {
  return Container(
    width: 250.0.w,
    height: 27.0.h,
    decoration: BoxDecoration(
      color: const Color(0x233B55),
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(width: 1.0),
    ),
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Icon(
            Icons.search,
            size: 30.sp,
            color: AppColors.four,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.0.sp,
                    color: AppColors.four),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
