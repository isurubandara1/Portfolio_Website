import 'package:flutter/material.dart';
import 'dart:async';

import '../DeskTop/Common.dart';

class Protfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [

          // Content
          Expanded(
            child: ListView(
              children: [
                // First Column
                Column(
                  children: [
                    const Text(
                            "Recycling App ",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                    const AutoScrollImages(
                      imageUrls: [
                        "R1.png",
                        "R2.png",
                        "R3.png",
                        "R4.png",
                        "R5.png",
                        "R6.png",
                        "R7.png",
                        "R8.png",
                        "R9.png",
                        "R10.png",
                      ],
                    ),
                     Column(
                        children: [
                          
                          const Text(
                            "If you have excess materials such as glass, metal, plastic, and so on, using this app,\nyou can inform us and request their removal. Our services will come and collect these materials, \nand you can receive a certain amount based on the weight of the materials. \nSo come forward to know about those amounts. \nWe are hoping for your support to help beautify our environment.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black12,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                ),
                                minimumSize: Size(50, 50),
                              ),
                              child: Image.asset(
                                "assets/github.png",
                                width: 30,
                              )),
                        ],
                      ),
                    
                  ],
                ),

                lineSpace(context, 30),

                //Second
                Column(
                  children: [
                    const Text(
                            "MathsTriks App",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                    const AutoScrollMaths(
                      imageUrls: [
                        "m1.png",
                        "m2.png",
                        "m3.png",
                        "m4.png",
                        "m5.png",
                        "m6.png",
                        "m7.png",
                      ],
                    ),
                     Column(
                        children: [
                         
                          const Text(
                            "With this Mobile application, students can discover solutions for various mathematical problems,\n including fractions, straight lines, area, perimeter, and more. \nWhen users input data into the app, \nit promptly generates answers for specific questions.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black12,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                ),
                                minimumSize: Size(50, 50),
                              ),
                              child: Image.asset(
                                "assets/github.png",
                                width: 30,
                              )),
                        ],
                      ),
                    
                  ],
                ),

                lineSpace(context, 30),

                //Thired
                Column(
                  children: [
                    const Text(
                            "Endemic Animals App",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                    const AutoScrollEndamic(
                      imageUrls: [
                        "e1.png",
                        "e2.png",
                        "e3.png",
                        "e4.png",
                        "e5.png",
                        "e6.png",
                        "e7.png",
                        "e8.png",
                        "e9.png",
                      ],
                    ),
                     Column(
                        children: [
                          
                          const Text(
                            "This app has been showcased a wide range of native endemic animals across worldwide. \nThe application is designed to be highly user-friendly \nand is compatible with both Android and iOS platforms.\n Users can acquire valuable knowledge about various animals by referring to this app.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black12,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                ),
                                minimumSize: Size(50, 50),
                              ),
                              child: Image.asset(
                                "assets/github.png",
                                width: 30,
                              )),
                        ],
                      ),
                    
                  ],
                ),

                lineSpace(context, 30),

                //Forth
                Column(
                  children: [
                    const Text(
                            "News App ",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                    const AutoScrollNews(
                      imageUrls: [
                        "n1.png",
                        "n2.png",
                        "n3.png",
                        "n4.png",
                        "n5.png",
                        "n6.png",
                        "n7.png",
                      ],
                    ),
                     Column(
                        children: [
                          
                          const Text(
                            "This Flutter application is a simple yet powerful news app \nthat allows users to stay updated with the latest news from various sources. \nIt fetches news data from a News API and presents it in a clean and intuitive user interface.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black12,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                ),
                                minimumSize: Size(50, 50),
                              ),
                              child: Image.asset(
                                "assets/github.png",
                                width: 30,
                              )),
                        ],
                      ),
                   
                  ],
                ),

                lineSpace(context, 30),

                //Five
            