import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
   /*  homescreen(), // Replace with your page
    homescreen(), // Replace with your page
    homescreen(),// Replace with your page
    homescreen(), */ // Replace with your page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 9.67,
          child: BottomNavigationBar(
            unselectedItemColor: const Color(0xFFBDCAD6),
            selectedItemColor: Colors.white,
            backgroundColor: AppColors.primary,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/home_nav.png',
                  ),
                  size: 30,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/category_nav.png',
                  ),
                  size: 30,
                ),
                label: 'category',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/watch_nav.png'),
                  size: 30,
                ),
                label: 'Book',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/user_nav.png'),
                  size: 30,
                ),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
