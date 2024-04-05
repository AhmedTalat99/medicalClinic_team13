import 'package:flutter/material.dart';

import '../theming/consts/app_colors.dart';
import '../theming/consts/app_fonts.dart';
import 'default_text_button.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({super.key, this.isCenter, this.icon, this.text, this.action});

  final bool ?isCenter;
  final IconData? icon;
  final String ?text;
  final List<Widget>? action;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      centerTitle: isCenter,
      leading: Icon(icon,color: AppColors.secondary,),
      title: Text('${text}',style: AppFonts.font24W600White,),
      actions: action,
    );
  }
}
