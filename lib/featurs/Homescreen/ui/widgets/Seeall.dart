import 'package:flutter/material.dart';

Widget seeAllRow(String title, void Function()? onpress) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          color: Color(0xFF233B55),
          fontWeight: FontWeight.bold,
        ),
      ),
      Row(
        children: [
          Text(
            'See All',
            style: TextStyle(
              fontSize: 20.0,
              color: Color(0xFF233B55),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          IconButton(
            icon: Image.asset('assets/images/Vector.png'),
            onPressed: onpress,
          ),
        ],
      ),
    ],
  );
}
