import 'package:flutter/material.dart';

import 'package:medical_clinic_team13/core/theming/consts/size_config.dart';
import 'package:medical_clinic_team13/core/widgets/default_app_bar.dart';
import 'package:medical_clinic_team13/core/widgets/see_all.dart';

class DoctorsCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: DefaultAppBar(action: [],),
      body: Column(children: [
        seeAllRow('Popular Doctor', () { }),

      ],),
    );
  }
}
