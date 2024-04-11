import 'package:flutter/material.dart';

import 'features/doctors_category/ui/screens/doctors_category_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const HomeUser());
}

class HomeUser extends StatelessWidget {
  const HomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoctorsCategoryScreen(),
    );
  }
}
