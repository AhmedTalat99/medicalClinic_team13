import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_clinic_team13/core/widgets/bottomnavigationbar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ScreenUtilInit(
    // Use builder only if you need to use library outside ScreenUtilInit context
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottombar(),
    ),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignUpScreen()
    );
  }
}