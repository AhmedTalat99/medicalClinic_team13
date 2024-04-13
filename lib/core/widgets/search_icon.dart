import 'package:flutter/material.dart';

import '../theming/consts/app_colors.dart';

Widget SearchIcon({required void Function() onPressed}) {
  return IconButton(
    onPressed: onPressed,
    icon:  Icon(
      Icons.search,
      size:40,
      color: AppColors.secondary,
    ),
  );
}
