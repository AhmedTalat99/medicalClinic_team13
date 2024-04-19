import 'package:flutter/material.dart';

import '../theming/consts/app_colors.dart';
import '../theming/consts/app_fonts.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({super.key, this.isCenter, this.icon, this.text='', this.action, this.function});

  final bool ?isCenter;
  final IconData? icon;
  final String text;
  final List<Widget>? action;
  final void Function()? function;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      centerTitle: isCenter,
      leading: IconButton(
        icon: Icon(icon,color: AppColors.secondary,),
        onPressed: function,),
      title: Text('${text}',style: AppFonts.font24W600White,),
      actions: action,
    );
  }
}