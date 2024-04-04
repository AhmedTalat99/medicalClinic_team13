import 'package:flutter/material.dart';

import '../../../../core/theming/consts/app_colors.dart';
import '../../../../core/theming/consts/size_config.dart';

class customCard extends StatelessWidget {
  customCard(
      {super.key,
      required this.categoryDisease,
      required this.image,
      required this.onPressed});
  final String categoryDisease;
  final String image;
 final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, right: 6, left: 6),
      child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight * 0.8,
        child: Card(
          color: AppColors.primary,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: onPressed,
                  icon: const Icon(Icons.arrow_forward_ios,
                      color: AppColors.secondary),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Text(
                  textAlign: TextAlign.center,
                  categoryDisease,
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Card(
                  child: Image.asset(
                    image,
                    width: SizeConfig.screenWidth * 0.42,
                    height: SizeConfig.screenHeight * 0.13,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
