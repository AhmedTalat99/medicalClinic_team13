import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: Container(
            color: const Color(0xffB46FEA),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 15, right: 15, left: 15, bottom: 20),
                  decoration: const BoxDecoration(
                    color: Color(0xffA11DC2),
                  ),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.dark_mode, size: 25),
                      ),
                      Image.asset(
                        'assets/images/user.png',
                        height: 60,
                      ),
                      const Text(
                        'name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        'name@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  focusColor: Colors.white,
                  leading: const Icon(Icons.person_outline_outlined,
                      color: Colors.white),
                  subtitle: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    // Navigate to the home screen
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  focusColor: Colors.white,
                  leading:
                      const Icon(Icons.lock_clock_sharp, color: Colors.white),
                  subtitle: const Text(
                    'Progress',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    // Navigate to the home screen
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  focusColor: Colors.white,
                  leading: const Icon(Icons.translate, color: Colors.white),
                  subtitle: const Text(
                    'Language',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    // Navigate to the home screen
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  focusColor: Colors.white,
                  leading: const Icon(Icons.logout, color: Colors.white),
                  subtitle: const Text(
                    'Log out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    // Navigate to the home screen
                    Navigator.pop(context);
                  },
                ),
                const Spacer(),
                ListTile(
                  focusColor: Colors.white,
                  leading: const Icon(Icons.info_sharp, color: Colors.white),
                  subtitle: const Text(
                    'About us',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    // Navigate to the home screen
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
