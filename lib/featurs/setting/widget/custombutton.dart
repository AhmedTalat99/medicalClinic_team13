import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget custombutton(Color color, color2, color3, String text) {
  return Container(
    child: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(154.0, 43.0)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(
              color: color3,
              width: 1.0.sp,
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(color2), // #BDCAD6
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 13.sp,
          fontFamily: 'Poppins',
        ),
      ),
    ),
  );
}
