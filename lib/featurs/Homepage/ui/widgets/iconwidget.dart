import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';

class myiconimage extends StatelessWidget {
  late IconData? myicon;
  myiconimage({super.key, required this.myicon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: MediaQuery.of(context).size.height / 19,
        width: MediaQuery.of(context).size.width / 9,
        margin: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Icon(
          myicon,
          size: 30.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
