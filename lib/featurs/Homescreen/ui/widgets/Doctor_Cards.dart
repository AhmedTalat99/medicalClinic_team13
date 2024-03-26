import 'package:flutter/material.dart';

Widget card_Doctor() {
  return SizedBox(
      height: 300,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
              width: 300,
              margin: EdgeInsets.all(10),
              child: Container(
                width: 200, // Adjust width as needed
                height: 200, // Adjust height as needed
                decoration: BoxDecoration(
                  color: Color(0xFF336EA6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      child: Stack(children: [
                        Positioned(
                          top: 15,
                          left: 15,
                          child: Container(
                            width: 270,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/sara.png'), // Replace 'your_image.png' with your actual image path
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          right: 20,
                          child: IconButton(
                            icon: Image.asset('assets/images/blueheart.png'),
                            onPressed: () {},
                          ),
                        ),
                        Positioned(
                          top: 100,
                          left: 20,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Color(
                                  0xFF336EA6), // Placeholder color, you can remove this line or change to your desired color
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                    width: 8.0), // Gap between icon and text
                                Text(
                                  '4.8',
                                  style: TextStyle(
                                    color: Colors.white, // Text color
                                    fontSize:
                                        16.0, // Adjust font size as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Align(
                      alignment: Alignment(-0.8, -0.1),
                      child: Container(
                        child: Text(
                          "Dr sara selem",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.8, -0.1),
                      child: Container(
                        child: Text(
                          '12 experence',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.8, -0.1),
                      child: Container(
                        child: Text(
                          '20 Dollar',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.8, -0.1),
                      child: Container(
                          child: Text(
                        'know more ...',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ))));
}
