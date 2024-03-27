import 'package:flutter/cupertino.dart';
import '../theming/consts/app_colors.dart';
import '../theming/consts/app_strings.dart';

class CustomAppName extends StatelessWidget {
  const CustomAppName({super.key, required this.size});
final double size ;
  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.splashName,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
        fontFamily: 'Peralta',
      ),
    );
  }
}
