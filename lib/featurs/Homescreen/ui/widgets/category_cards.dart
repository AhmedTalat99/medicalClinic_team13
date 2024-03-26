import 'package:flutter/material.dart';

Widget card_category() {
  return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                height: 10,
                width: 150,
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF336EA6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        'Speech',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              )));
}
