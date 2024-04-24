import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';
import 'package:medical_clinic_team13/features/doctors_category/ui/widgets/rated.dart';

import '../../../../core/theming/consts/app_colors.dart';
import '../../../../core/theming/consts/size_config.dart';

class BigVerticalDoctorCard extends StatefulWidget {
  BigVerticalDoctorCard({
    super.key,
    required this.image,
    required this.doctorName,
    required this.typeDisease,
    required this.rated,
  });
  final String doctorName;
  final String typeDisease;
  final String image;
  final String rated;

  @override
  State<BigVerticalDoctorCard> createState() => _BigVerticalDoctorCardState();
}

class _BigVerticalDoctorCardState extends State<BigVerticalDoctorCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.only(top: 2, right: 6, left: 6),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primary,
        ),
        width: SizeConfig.screenWidth * 0.49,
        height: SizeConfig.screenHeight * 0.19,
        child: Column(
          children: [
            Container(
              width: SizeConfig.screenWidth * 0.27,
              height: SizeConfig.screenHeight * 0.15,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.secondary,
                  width: 2.0,
                ),
              ),
              child: Image.asset(widget.image),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                textAlign: TextAlign.center,
                widget.doctorName,
                style: AppFonts.font18W600deepBlue.copyWith(
                  color: AppColors.secondary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 15),
              child: Text(
                textAlign: TextAlign.center,
                widget.typeDisease,
                style: AppFonts.font18W600deepBlue.copyWith(
                  color: AppColors.secondary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6, left: 15),
              child: Rated(review: widget.rated),
            ),
          ],
        ),
      ),
    );
  }
}
