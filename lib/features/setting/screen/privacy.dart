import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_clinic_team13/core/style/style.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/features/setting/screen/logout.dart';
import 'package:medical_clinic_team13/features/setting/widget/custombutton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_clinic_team13/features/setting/widget/feedback.dart';
import 'package:medical_clinic_team13/features/setting/widget/showdialog.dart';
import '../Model/switchmodel.dart';

class privacy extends StatefulWidget {
  @override
  State<privacy> createState() => _privacyState();
}

class _privacyState extends State<privacy> {
  Switchmodel? switchmodel;

  List<Switchmodel> setting = [
    Switchmodel(
      title: 'Name',
      subtitle: 'Ammar Ahmed',
      switchvalue: true,
    ),
    Switchmodel(
      title: 'Phone number',
      subtitle: '01078654434',
      switchvalue: false,
    ),
    Switchmodel(
      title: 'Email',
      subtitle: 'ammar21@gmail.com',
      switchvalue: true,
    ),
    Switchmodel(
      switchvalue: false,
      title: 'Recommendations',
      subtitle: 'If we see you interact with somthing more.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => logout()),
            );
          },
          child: Text(
            ' Privacy',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Poppins', fontSize: 24.sp),
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 12, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return showfeedback();
                      });
                },
                child: Text('Privacy Preferences', style: textstyle2())),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return showdialoog();
                    });
              },
              child: Text(
                "Hi there, we don't want to keep any info that you're not comfortable sharing. We want our users to have 100% control of their information 100% of the time. Toggle below what you'd like to share and not share, bearing in mind the more you share with us the more tailored user experience you'll receive - thanks!",
                style: TextStyle(
                    fontSize: 14.0.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: setting.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 10,
                      child: ListTile(
                        title: Text(setting[index].title.toString(),
                            style: textstyle2()),
                        subtitle: Text(
                          setting[index].subtitle.toString(),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: AppColors.likegrey,
                            fontSize: 11.sp,
                          ),
                        ),
                        trailing: CupertinoSwitch(
                          activeColor: AppColors.primary,
                          value: setting[index].switchvalue!, //true
                          onChanged: (value) {
                            setState(() {
                              setting[index].switchvalue = value; //false
                            });
                            _handleSwitchAction(index, value);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                      width: MediaQuery.of(context).size.width /
                          1.1, // Set width to half of the screen width
                      child: Divider(), // This adds a horizontal divider
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  custombutton(Colors.white, AppColors.primary,
                      AppColors.primary, 'Saved prefrence'),
                  custombutton(AppColors.four, AppColors.cancel, AppColors.five,
                      'Saved prefrence'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Function to handle the action of each switch
void _handleSwitchAction(int index, bool value) {
  switch (index) {
    case 0:
      // Action for Switch 1
      if (value) {
        print('Name switch turned on');
      } else {
        print('Name switch turned off');
      }
      break;
    case 1:
      // Action for Switch 2
      if (value) {
        print('Phone number switch turned on');
      } else {
        print('Phone number switch turned off');
      }
      break;
    case 2:
      // Action for Switch 3
      if (value) {
        print('Email switch turned on');
      } else {
        print('Email switch turned off');
      }
      break;
    case 3:
      // Action for Switch 4
      if (value) {
        print('Recommendations switch turned on');
      } else {
        print('Recommendations switch turned off');
      }
      break;
    // Add more cases for additional switches
  }
}
