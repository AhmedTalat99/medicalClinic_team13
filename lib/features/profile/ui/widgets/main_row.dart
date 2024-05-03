import 'package:flutter/material.dart';

import '../../../../core/theming/consts/app_colors.dart';
import '../../../../core/theming/consts/app_fonts.dart';

class MainRow extends StatelessWidget {
  const MainRow({super.key, required this.icon, required this.text, this.function});
final IconData icon;
final String text;
  final void Function()? function;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: AppColors.backgroundIcon.withOpacity(0.55),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(icon,color: AppColors.secondary),
        ),
        SizedBox(width: 10,),
        Text('${text}',style: AppFonts.font20W600Black,),
        Spacer(),
        IconButton(
          onPressed: function,
          icon: Icon(Icons.arrow_forward_ios_outlined),
          color: AppColors.deepBlue,)
      ],
    );
  }
}
