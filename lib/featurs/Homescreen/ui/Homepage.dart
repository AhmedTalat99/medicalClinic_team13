import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medical_clinic_team13/featurs/Homescreen/ui/widgets/Doctor_Cards.dart';
import 'package:medical_clinic_team13/featurs/Homescreen/ui/widgets/Seeall.dart';
import 'package:medical_clinic_team13/featurs/Homescreen/ui/widgets/Sliderimage.dart';
import 'package:medical_clinic_team13/featurs/Homescreen/ui/widgets/bottomnavigationbar.dart';
import 'package:medical_clinic_team13/featurs/Homescreen/ui/widgets/category_cards.dart';
import 'package:medical_clinic_team13/featurs/Homescreen/ui/widgets/iconwidget.dart';
import 'package:medical_clinic_team13/featurs/Homescreen/ui/widgets/searchwidget.dart';

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
                height: 30,
              ),
            ),
            // Title
            Text('Markaz ElAmal'),
          ],
        ),
        actions: const <Widget>[
          // Message Icon
          myiconimage(
            img: 'assets/images/bell.png',
            wid: 35.0,
            hig: 35.0,
          ),

          // Notification Icon
          myiconimage(
            img: 'assets/images/1.png',
            wid: 35.0,
            hig: 35.0,
          ),
          SizedBox(
            width: 20,
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
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                children: [
                  Search_widget(),
                  const SizedBox(
                    width: 10,
                  ),
                  const myiconimage(
                    img: 'assets/images/filter.png',
                    wid: 50.0,
                    hig: 40.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ImageSlider(),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: seeAllRow('Category', nav),
            ),
            SizedBox(
              height: 15,
            ),
            card_category(),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: seeAllRow('Doctors', nav)),
            card_Doctor(),
          ]),
        );
      }),
      bottomNavigationBar: bottombar(),
    );
  }
}
