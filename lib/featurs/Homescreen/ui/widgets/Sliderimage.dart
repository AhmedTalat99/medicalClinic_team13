import 'dart:async';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  List<String> _imagePaths = [
    "assets/images/girl.png",
    "assets/images/girl.png",
    "assets/images/girl.png",
  ];

  @override
  void initState() {
    super.initState();
    // Start autoplay timer
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < _imagePaths.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: PageView.builder(
        controller: _pageController,
        itemCount: _imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                _imagePaths[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
