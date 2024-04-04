import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_assets.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_strings.dart';
import 'package:medical_clinic_team13/core/theming/consts/size_config.dart';

import '../widgets/custom_card.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  List<String> _categories = [
    AppStrings.speech,
    AppStrings.autism,
    AppStrings.learningDifficulties,
    AppStrings.intelligenceTest,
    AppStrings.behaviorModification,
    AppStrings.skillsDevelopment,
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: const Text(
          AppStrings.category,
          style: TextStyle(
            color: AppColors.secondary,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon:
                const Icon(Icons.search, size: 40, color: AppColors.secondary),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: [
              customCard(
                categoryDisease: AppStrings.speech,
                image: AppImages.speech,
                onPressed: (){},
              ),
              customCard(
                categoryDisease: AppStrings.autism,
                image: AppImages.autism,
                onPressed: (){},
              ),
              customCard(
                categoryDisease: AppStrings.learningDifficulties,
                image: AppImages.learningDifficulties,
                onPressed: (){},
              ),
              customCard(
                categoryDisease: AppStrings.intelligenceTest,
                image: AppImages.intelligenceTest,
                onPressed: (){},
              ),
              customCard(
                categoryDisease: AppStrings.behaviorModification,
                image: AppImages.behaviorModification,
                onPressed: (){},
              ),
              customCard(
                categoryDisease: AppStrings.skillsDevelopment,
                image: AppImages.skillsDevelopment,
                onPressed: (){},
              ),
            ]),
      ),
    );
  }
}
