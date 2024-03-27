import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.text, required this.style, required this.color, this.function, required this.height, required this.width, this.border});

  final String text;
  final TextStyle style;
  final Color color;
  final void Function()? function;
  final double height;
  final double width;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: border,
      ),
      child: MaterialButton(
          onPressed: function,
          child: Text(
              '${text}',
            style: style,
          )
      ),
    );
  }
}



