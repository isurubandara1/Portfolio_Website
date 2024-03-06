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
