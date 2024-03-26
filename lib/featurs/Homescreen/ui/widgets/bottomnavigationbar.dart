import 'package:flutter/material.dart';

Widget bottombar() {
  return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        unselectedItemColor: Color(0xFFBDCAD6),
        selectedItemColor: Colors.white,
        backgroundColor: Color(0xFF233B55),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/Home.png',
              ),
              size: 45,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/category.png',
              ),
              size: 45,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/book1.png'),
              size: 45,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/profile1.png'),
              size: 45,
            ),
            label: '',
          ),
        ],
        currentIndex: 0,
      ));
}
