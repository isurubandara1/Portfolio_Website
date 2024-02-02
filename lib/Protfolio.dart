import 'package:flutter/material.dart';
import 'package:protfolio/Common.dart';
import 'dart:async';

class Protfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NavBar

            Navbar(context),

            // Content
            SizedBox(
              height: 30,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //
                    AutoScrollImages(),

                    Column(
                      children: [
                        Text(
                          "Recycling App ",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "If you have excess materials such as glass, metal, plastic, and so on, using this app,\nyou can inform us and request their removal. Our services will come and collect these materials, \nand you can receive a certain amount based on the weight of the materials. \nSo come forward to know about those amounts. \nWe are hoping for your support to help beautify our environment.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black12,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(
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
                  ],
                ),
              ),
            ),

            //second row
            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Container(
                width: double.infinity,
                height: 4,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 5),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //
                    AutoScrollMaths(),

                    Column(
                      children: [
                        Text(
                          "MathsTriks App",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "With this MathsTriks App, students can discover solutions for various mathematical problems,\n including fractions, straight lines, area, perimeter, and more.\nWhen users input data into the app, \nit promptly generates answers for specific questions.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black12,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(
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
                  ],
                ),
              ),
            ),

            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Container(
                width: double.infinity,
                height: 4,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 5),

            //Thired row

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //
                    AutoScrollImages(),

                    Column(
                      children: [
                        Text(
                          "Recycling App ",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "If you have excess materials such as glass, metal, plastic, and so on, using this app,\nyou can inform us and request their removal. \nOur services will come and collect these materials, \nand you can receive a certain amount based on the weight of the materials. \nSo come forward to know about those amounts. \nWe are hoping for your support to help beautify our environment.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black12,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// One Animation for Recycle
class AutoScrollImages extends StatefulWidget {
  const AutoScrollImages({super.key});

  @override
  _AutoScrollImagesState createState() => _AutoScrollImagesState();
}

class _AutoScrollImagesState extends State<AutoScrollImages> {
  final List<String> imageUrls = [
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
  ];

  final PageController _controller = PageController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_controller.page == imageUrls.length - 1) {
        _controller.animateToPage(0,
            duration: const Duration(milliseconds: 2000),
            curve: Curves.bounceOut);
      } else {
        _controller.nextPage(
            duration: Duration(milliseconds: 2000), curve: Curves.ease);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 500,
          width: 600,
          child: PageView.builder(
            controller: _controller,
            itemCount: imageUrls.length,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                "assets/Recycle/${imageUrls[index]}",
                fit: BoxFit.contain,
              );
            },
          ),
        ),
      ],
    );
  }
}

// Two Animation for Maths
class AutoScrollMaths extends StatefulWidget {
  const AutoScrollMaths({super.key});

  @override
  _AutoScrollMathsState createState() => _AutoScrollMathsState();
}

class _AutoScrollMathsState extends State<AutoScrollMaths> {
  final List<String> imageUrls = [
    "m1.png",
    "m2.png",
    "m3.png",
    "m4.png",
    "m5.png",
    "m6.png",
    "m7.png",
  ];

  final PageController _controller = PageController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_controller.page == imageUrls.length - 1) {
        _controller.animateToPage(0,
            duration: const Duration(milliseconds: 2000),
            curve: Curves.bounceOut);
      } else {
        _controller.nextPage(
            duration: Duration(milliseconds: 2000), curve: Curves.ease);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 500,
          width: 600,
          child: PageView.builder(
            controller: _controller,
            itemCount: imageUrls.length,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                "assets/Maths/${imageUrls[index]}",
                fit: BoxFit.contain,
              );
            },
          ),
        ),
      ],
    );
  }
}
