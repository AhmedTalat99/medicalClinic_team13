import 'package:flutter/material.dart';

Widget bottombar() {
  return BottomNavigationBar(
    unselectedItemColor: Color(0xFFBDCAD6),
    selectedItemColor: Colors.white,
    backgroundColor: Color(0xFF233B55),
    type: BottomNavigationBarType.fixed,
    items: const [
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
    currentIndex: 0,
  );
}
