import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_assets.dart';



class AppLogo extends StatelessWidget {
  const AppLogo({super.key, required this.width, required this.height, required this.space, required this.style});
  final double width;
  final double height;
  final double space;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppAssets.appLogo,
          width: width,
          height: height,
        ),
        SizedBox(height: space,),
        Text('Markaz ElAmal',style: style,)
      ],
    );
  }
}
