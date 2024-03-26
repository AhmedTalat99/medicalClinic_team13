import 'package:flutter/material.dart';

class myiconimage extends StatelessWidget {
  final String? img;
  final double? hig;
  final double? wid;
  const myiconimage({
    super.key,
    this.img,
    this.hig,
    this.wid,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: wid,
      height: hig,
      decoration: BoxDecoration(
        color: Color(0xFF336EA6),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: IconButton(
        icon: ImageIcon(
          AssetImage(img.toString()),
          color: Colors.white,
        ),
        onPressed: () {
          // Handle notification icon press
        },
      ),
    );
  }
}
