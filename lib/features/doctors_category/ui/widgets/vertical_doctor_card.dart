import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';

import '../../../../core/theming/consts/app_colors.dart';
import '../../../../core/theming/consts/size_config.dart';

class VerticalDoctorCard extends StatefulWidget {
  VerticalDoctorCard({
    super.key,
    required this.image,
    required this.doctorName,
    this.yearsExperience,
    this.typeDisease,
    this.ratingWidget,
  });
  final String doctorName;
  final String? yearsExperience;
  final String? typeDisease;
  final Widget? ratingWidget;
  final String image;

  @override
  State<VerticalDoctorCard> createState() => _VerticalDoctorCardState();
}

class _VerticalDoctorCardState extends State<VerticalDoctorCard> {
  double? _ratingValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, right: 6, left: 6),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primary,
        ),
        width: SizeConfig.screenWidth * 0.49,
        //height: SizeConfig.screenHeight * 6,
        child: Column(
          children: [
            SizedBox(height: 10),
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
              padding: EdgeInsets.only(top: 5),
              child: Text(
                textAlign: TextAlign.center,
                widget.doctorName,
                style: AppFonts.font18W600deepBlue.copyWith(
                  color: AppColors.secondary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1),
              child: Text(
                textAlign: TextAlign.center,
                widget.yearsExperience!,
                style: AppFonts.font16W400WhiteNormal.copyWith(
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: RatingBar(
                  initialRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  ratingWidget: RatingWidget(
                      full: const Icon(
                        Icons.star,
                        color: AppColors.star,
                      ),
                      half: const Icon(
                        Icons.star_half,
                        color: AppColors.star,
                      ),
                      empty: const Icon(
                        Icons.star_outline,
                        color: AppColors.secondary,
                      )),
                  onRatingUpdate: (value) {
                    setState(() {
                      _ratingValue = value;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
