import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_assets.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_strings.dart';

import 'package:medical_clinic_team13/core/theming/consts/size_config.dart';
import 'package:medical_clinic_team13/core/widgets/default_app_bar.dart';
import 'package:medical_clinic_team13/core/widgets/search_icon.dart';
import 'package:medical_clinic_team13/core/widgets/see_all.dart';
import 'package:medical_clinic_team13/features/doctors_category/ui/widgets/big_vertical_doctor_card.dart';
import 'package:medical_clinic_team13/features/doctors_category/ui/widgets/horizontal_doctor_card.dart';
import 'package:medical_clinic_team13/features/doctors_category/ui/widgets/select_shape_item.dart';
import 'package:medical_clinic_team13/features/doctors_category/ui/widgets/vertical_doctor_card.dart';

class DoctorsCategoryScreen extends StatefulWidget {
  @override
  State<DoctorsCategoryScreen> createState() => _DoctorsCategoryScreenState();
}

class _DoctorsCategoryScreenState extends State<DoctorsCategoryScreen> {
  bool isList = true;
  @override
  void initState() {
    super.initState();
  }

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
          SelectShapeItem(
            title: AppStrings.bookDoctor,
            Gridonpress: () {
              setState(() {
                isList = false;
              });
            },
            Listonpress: () {
              setState(() {
                isList = true;
              });
            },
            gridColor:
                isList == false ? AppColors.black : AppColors.springGreen,
            listColor: isList == true ? AppColors.springGreen : AppColors.black,
          ),
          SizedBox(height: 12),
          Flexible(
            flex: 2,
            child: ListView(
              children: [
                HorizontalDoctorCard(
                  image: AppImages.osama,
                  doctorName: AppStrings.osama,
                  typeDisease: AppStrings.speech,
                  rated: '4.9',
                ),
                SizedBox(height: 12),
                HorizontalDoctorCard(
                  image: AppImages.sara,
                  doctorName: AppStrings.sara,
                  typeDisease: AppStrings.speech,
                  rated: '4.8',
                ),
                SizedBox(height: 12),
                HorizontalDoctorCard(
                  image: AppImages.may,
                  doctorName: AppStrings.may,
                  typeDisease: AppStrings.speech,
                  rated: '4.5',
                ),
                SizedBox(height: 12),
                HorizontalDoctorCard(
                  image: AppImages.alaa,
                  doctorName: AppStrings.alaa,
                  typeDisease: AppStrings.autism,
                  rated: '3.7',
                ),
                SizedBox(height: 12),
                HorizontalDoctorCard(
                  image: AppImages.osama,
                  doctorName: AppStrings.osama,
                  typeDisease: AppStrings.speech,
                  rated: '3.7',
                ),
                SizedBox(height: 12),
                HorizontalDoctorCard(
                  image: AppImages.osama,
                  doctorName: AppStrings.osama,
                  typeDisease: AppStrings.speech,
                  rated: '3.7',
                ),
                SizedBox(height: 12),
                HorizontalDoctorCard(
                  image: AppImages.osama,
                  doctorName: AppStrings.osama,
                  typeDisease: AppStrings.speech,
                  rated: '3.7',
                ),
              ],
            ),
          )
          /* GridView(
                                    shrinkWrap: true,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 5.0,
                  ),
                  children: [
                    BigVerticalDoctorCard(
                      image: AppImages.osama,
                      doctorName: AppStrings.osama,
                      typeDisease: AppStrings.speech,
                      rated: '4.9',
                    ),
                    BigVerticalDoctorCard(
                      image: AppImages.sara,
                      doctorName: AppStrings.sara,
                      typeDisease: AppStrings.speech,
                      rated: '4.8',
                    ),
                    BigVerticalDoctorCard(
                      image: AppImages.may,
                      doctorName: AppStrings.may,
                      typeDisease: AppStrings.speech,
                      rated: '4.5',
                    ),
                    BigVerticalDoctorCard(
                      image: AppImages.alaa,
                      doctorName: AppStrings.alaa,
                      typeDisease: AppStrings.autism,
                      rated: '3.7',
                    ),
                    BigVerticalDoctorCard(
                      image: AppImages.osama,
                      doctorName: AppStrings.sara,
                      typeDisease: AppStrings.speech,
                      rated: '4.9',
                    ),
                    BigVerticalDoctorCard(
                      image: AppImages.osama,
                      doctorName: AppStrings.sara,
                      typeDisease: AppStrings.speech,
                      rated: '4.9',
                    ),
                    BigVerticalDoctorCard(
                      image: AppImages.osama,
                      doctorName: AppStrings.sara,
                      typeDisease: AppStrings.speech,
                      rated: '4.9',
                    ),
                  ],
                ),
    */
        ],
      ),
    );
  }
}
