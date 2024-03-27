import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_clinic_team13/featurs/Homepage/ui/widgets/Doctor_Cards.dart';
import 'package:medical_clinic_team13/featurs/Homepage/ui/widgets/Seeall.dart';
import 'package:medical_clinic_team13/featurs/Homepage/ui/widgets/Sliderimage.dart';
import 'package:medical_clinic_team13/core/widgets/bottomnavigationbar.dart';
import 'package:medical_clinic_team13/featurs/Homepage/ui/widgets/category_cards.dart';
import 'package:medical_clinic_team13/featurs/Homepage/ui/widgets/iconwidget.dart';
import 'package:medical_clinic_team13/featurs/Homepage/ui/widgets/searchwidget.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  void nav() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            // Logo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/Logo.png', // Provide your logo image path here
                height: 30.h,
              ),
            ),
            // Title
            Text(
              'Markaz ElAmal',
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: <Widget>[
          // Message Icon
          myiconimage(
            myicon: Icons.notifications,
          ),
          SizedBox(
            width: 15,
          ),
          // Notification Icon
          myiconimage(
            myicon: Icons.chat,
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 16,
                    child: Search_widget(),
                  ),
                  myiconimage(
                    myicon: Icons.tune,
                  ),
                ],
              ),
            ),
            SizedBox(
              child: ImageSlider(),
              height: MediaQuery.of(context).size.height / 8,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 22,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
              child: seeAllRow('Category', nav),
            ),
            SizedBox(
              child: card_category(),
              height: MediaQuery.of(context).size.height / 10,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 22,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                child: seeAllRow('Doctors', nav)),
            SizedBox(
              // width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.47,
              child: AspectRatio(aspectRatio: 1.5 / 1, child: card_Doctor()),
            ),
          ]),
        );
      }),
      bottomNavigationBar: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height / 9.67,
            child: bottombar()),
      ),
    );
  }
}
