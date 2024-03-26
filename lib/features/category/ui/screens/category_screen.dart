import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Category',
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
        padding: const EdgeInsets.only(top: 15),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: List.generate(
            6,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: AppColors.primary,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios,
                            color: AppColors.secondary),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Speech',
                        style: TextStyle(
                            color: AppColors.secondary,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Card(
                        child: Image.asset(
                          'assets/images/تخاطب.png',
                          width: MediaQuery.of(context).size.width * 0.35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
