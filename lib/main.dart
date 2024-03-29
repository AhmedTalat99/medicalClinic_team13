import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/features/sign_up/ui/screen/sign_up_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
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