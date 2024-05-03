import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';

class showdialoog extends StatefulWidget {
  const showdialoog({Key? key}) : super(key: key);

  @override
  State<showdialoog> createState() => _showdialoogState();
}

class _showdialoogState extends State<showdialoog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 0.1,
        height: MediaQuery.of(context).size.height / 1.8,
        decoration: BoxDecoration(
          color: Color(0xFF144774),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment(-0.6, 0.5),
              child: Text(
                'Send us your rating!',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: AppColors.yellow,
                  size: 50.sp,
                ),
                Icon(
                  Icons.star,
                  color: AppColors.yellow,
                  size: 50.sp,
                ),
                Icon(
                  Icons.star,
                  color: AppColors.yellow,
                  size: 50.sp,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 50.sp,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 50.sp,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment(-0.8, 0.5),
              child: Text(
                'Your comment',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.27,
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                // Button onPressed logic
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Text(
                'Submit',
                style: TextStyle(
                  color: AppColors.five,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  height: 1.0, // Line height
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
