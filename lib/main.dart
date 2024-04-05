import 'package:flutter/material.dart';
import 'features/login/ui/screen/login_screen.dart';
import 'features/profile/ui/screen/profile_screen.dart';

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
        home: ProfileScreen()
    );
  }
}