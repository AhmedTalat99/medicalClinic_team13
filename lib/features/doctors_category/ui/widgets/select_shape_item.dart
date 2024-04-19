import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';

Widget SelectShapeItem(String title, void Function()? onpress) {
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
        color: AppColors.brightGrey,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.grid_view,color:AppColors.springGreen),
              onPressed: onpress,
            ),
            IconButton(
              icon: Icon(Icons.list,color:AppColors.black),
              onPressed: onpress,
            ),
          ],
        ),
      ),
    ],
  );
}
