import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_assets.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_strings.dart';

import 'package:medical_clinic_team13/core/theming/consts/size_config.dart';
import 'package:medical_clinic_team13/core/widgets/default_app_bar.dart';
import 'package:medical_clinic_team13/core/widgets/search_icon.dart';
import 'package:medical_clinic_team13/core/widgets/see_all.dart';
import 'package:medical_clinic_team13/features/doctors_category/ui/widgets/select_shape_item.dart';
import 'package:medical_clinic_team13/features/doctors_category/ui/widgets/vertical_doctor_card.dart';

class DoctorsCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: DefaultAppBar(
        action: [SearchIcon(onPressed: () {})],
      ),
      body: Column(
        children: [
          seeAllRow('Popular Doctor', () {}),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Divider(thickness: 2, indent: 15, endIndent: 15),
          SelectShapeItem(AppStrings.bookDoctor, () {}),
          Flexible(
            flex: 2,
            child: ListView(
              children: [
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
                VerticalDoctorCard(
                  doctorName: AppStrings.alaa,
                  yearsExperience: '5 Years Experience',
                  image: AppImages.alaa,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
