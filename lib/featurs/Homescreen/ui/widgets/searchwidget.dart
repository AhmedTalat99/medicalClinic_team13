import 'package:flutter/material.dart';

Widget Search_widget() {
  return Container(
    width: 250.0,
    height: 40.0,
    decoration: BoxDecoration(
      color: const Color(0x233B55),
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(width: 1.0),
    ),
    child: const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: ImageIcon(
            AssetImage('assets/images/search.png'),
            color: Color(0xFF233B55),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
