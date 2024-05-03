import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';

class StaticText extends StatelessWidget {
  const StaticText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 60, left: 21),
      child: Text(
        'Letis Start with\nsign up',
        style: AppFonts.font24W600White,
      ),
    );
  }
}
