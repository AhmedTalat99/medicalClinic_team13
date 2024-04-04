import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';

class showfeedback extends StatefulWidget {
  const showfeedback({Key? key}) : super(key: key);

  @override
  State<showfeedback> createState() => _showfeedbackState();
}

class _showfeedbackState extends State<showfeedback> {
  String? selectedOption;

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
                'Send us some feedback!',
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
            Align(
              alignment: Alignment(-0.6, 3),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                child: Text(
                  'Do you have a suggestion or found some bug! ',
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Describe your issue or idea',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15),
                  hintStyle: TextStyle(
                      color: AppColors.four,
                      fontFamily: 'Poppins',
                      fontSize: 16.sp),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  fillColor: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.selected)) {
                      // Color when selected
                      return Colors.blue; // Change the color here
                    }
                    // Color when not selected
                    return Colors.white; // Change the color here
                  }),
                  activeColor: Colors.white,
                  value: 'Bug',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
                Text(
                  'Bug',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
                SizedBox(width: 20),
                Radio(
                  fillColor: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.selected)) {
                      // Color when selected
                      return Colors.blue; // Change the color here
                    }
                    // Color when not selected
                    return Colors.white; // Change the color here
                  }),
                  activeColor: Colors.white,
                  value: 'Comment',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
                Text(
                  'Comment',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
                SizedBox(width: 20),
                Radio(
                  fillColor: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.selected)) {
                      // Color when selected
                      return Colors.blue; // Change the color here
                    }
                    // Color when not selected
                    return Colors.white; // Change the color here
                  }),
                  value: 'Other',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
                Text(
                  'Other',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // Button onPressed logic
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Text(
                'Send Feeback',
                style: TextStyle(
                  color: AppColors.four,
                  fontFamily: 'Poppins',

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
