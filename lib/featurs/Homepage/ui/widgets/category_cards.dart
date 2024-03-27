import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';

Widget card_category() {
  return SizedBox(
      height: 65.h,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                width: 150,
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 9,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        'Speech',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              )));
}
