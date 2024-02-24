import 'package:flutter/material.dart';
import 'dart:async';
import 'Common.dart';

class Protfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          // NavBar
          Navbar(context),

          // Cover Image
          // Container(
          //   height: 50,
          //   color: Colors.black,
          // ),

          // Content
          Expanded(
            child: ListView(
              children: [
                // First Row
                Row(
                  children: [
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
                          "Recycling App ",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "If you have excess materials such as glass, metal, plastic, and so on, using this app,\nyou can inform us and request their removal. Our services will come and collect these materials, \nand you can receive a certain amount based on the weight of the materials. \nSo come forward to know about those amounts. \nWe are hoping for your support to help beautify our environment.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
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
                  ],
                ),

                lineSpace(context, 30),

                //Second
                Row(
                  children: [
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
                          "MathsTriks App",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "With this Mobile application, students can discover solutions for various mathematical problems,\n including fractions, straight lines, area, perimeter, and more. \nWhen users input data into the app, \nit promptly generates answers for specific questions.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const SizedBox(
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

                lineSpace(context, 30),

                //Thired
                Row(
                  children: [
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
                        Text(
                          "Endemic Animals App",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "This app has been showcased a wide range of native endemic animals across worldwide. \nThe application is designed to be highly user-friendly \nand is compatible with both Android and iOS platforms.\n Users can acquire valuable knowledge about various animals by referring to this app.",
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

                lineSpace(context, 30),

                //Forth
                Row(
                  children: [
                    AutoScrollNews(
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
                        Text(
                          "News App ",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "This Flutter application is a simple yet powerful news app \nthat allows users to stay updated with the latest news from various sources. \nIt fetches news data from a News API and presents it in a clean and intuitive user interface.",
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

                lineSpace(context, 30),

                //Five
                Row(
                  children: [
                    AutoScrollRandom(
                      imageUrls: [
                        "u1.png",
                        "u2.png",
                        "u3.png",
                        "u1.png",
                        "u2.png",
                        "u3.png",
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Random Users API",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "When the button is clicked,random users and their details will be displayed on the screen. \nYou can explore more users and details by scrolling. \nThere has been used the technique of Flutter API call.",
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRow(Widget autoScrollWidget, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          autoScrollWidget,
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.black12,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  minimumSize: Size(50, 50),
                ),
                child: Image.asset(
                  "assets/github.png",
                  width: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDivider() {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Container(
        width: double.infinity,
        height: 4,
        color: Colors.blue,
      ),
    );
  }
}

//First
class AutoScrollImages extends StatefulWidget {
  final List<String> imageUrls;

  const AutoScrollImages({required this.imageUrls, Key? key}) : super(key: key);

  @override
  _AutoScrollImagesState createState() => _AutoScrollImagesState();
}

class _AutoScrollImagesState extends State<AutoScrollImages> {
  final PageController _controller = PageController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_controller.page == widget.imageUrls.length - 1) {
        _controller.animateToPage(
          0,
          duration: const Duration(milliseconds: 2000),
          curve: Curves.bounceOut,
        );
      } else {
        _controller.nextPage(
          duration: Duration(milliseconds: 2000),
          curve: Curves.ease,
        );
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
    return SizedBox(
      height: 500,
      width: 600,
      child: PageView.builder(
        controller: _controller,
        itemCount: widget.imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            "assets/Recycle/${widget.imageUrls[index]}",
            fit: BoxFit.contain,
          );
        },
      ),
    );
  }
}

//second
class AutoScrollMaths extends StatefulWidget {
  final List<String> imageUrls;

  const AutoScrollMaths({required this.imageUrls, Key? key}) : super(key: key);

  @override
  _AutoScrollMathsState createState() => _AutoScrollMathsState();
}

class _AutoScrollMathsState extends State<AutoScrollMaths> {
  final PageController _controller = PageController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_controller.page == widget.imageUrls.length - 1) {
        _controller.animateToPage(
          0,
          duration: const Duration(milliseconds: 2000),
          curve: Curves.bounceOut,
        );
      } else {
        _controller.nextPage(
          duration: Duration(milliseconds: 2000),
          curve: Curves.ease,
        );
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
    return SizedBox(
      height: 500,
      width: 600,
      child: PageView.builder(
        controller: _controller,
        itemCount: widget.imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            "assets/Maths/${widget.imageUrls[index]}",
            fit: BoxFit.contain,
          );
        },
      ),
    );
  }
}

//Thired
class AutoScrollEndamic extends StatefulWidget {
  final List<String> imageUrls;

  const AutoScrollEndamic({required this.imageUrls, Key? key})
      : super(key: key);

  @override
  _AutoScrollEndamicState createState() => _AutoScrollEndamicState();
}

class _AutoScrollEndamicState extends State<AutoScrollEndamic> {
  final PageController _controller = PageController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_controller.page == widget.imageUrls.length - 1) {
        _controller.animateToPage(
          0,
          duration: const Duration(milliseconds: 2000),
          curve: Curves.bounceOut,
        );
      } else {
        _controller.nextPage(
          duration: Duration(milliseconds: 2000),
          curve: Curves.ease,
        );
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
    return SizedBox(
      height: 500,
      width: 600,
      child: PageView.builder(
        controller: _controller,
        itemCount: widget.imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            "assets/Endamic/${widget.imageUrls[index]}",
            fit: BoxFit.contain,
          );
        },
      ),
    );
  }
}

//Forth
class AutoScrollNews extends StatefulWidget {
  final List<String> imageUrls;

  const AutoScrollNews({required this.imageUrls, Key? key}) : super(key: key);

  @override
  _AutoScrollNewsState createState() => _AutoScrollNewsState();
}

class _AutoScrollNewsState extends State<AutoScrollNews> {
  final PageController _controller = PageController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_controller.page == widget.imageUrls.length - 1) {
        _controller.animateToPage(
          0,
          duration: const Duration(milliseconds: 2000),
          curve: Curves.bounceOut,
        );
      } else {
        _controller.nextPage(
          duration: Duration(milliseconds: 2000),
          curve: Curves.ease,
        );
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
    return SizedBox(
      height: 500,
      width: 600,
      child: PageView.builder(
        controller: _controller,
        itemCount: widget.imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            "assets/News/${widget.imageUrls[index]}",
            fit: BoxFit.contain,
          );
        },
      ),
    );
  }
}

//Fiveth

class AutoScrollRandom extends StatefulWidget {
  final List<String> imageUrls;

  const AutoScrollRandom({required this.imageUrls, Key? key}) : super(key: key);

  @override
  _AutoScrollRandomState createState() => _AutoScrollRandomState();
}

class _AutoScrollRandomState extends State<AutoScrollRandom> {
  final PageController _controller = PageController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_controller.page == widget.imageUrls.length - 1) {
        _controller.animateToPage(
          0,
          duration: const Duration(milliseconds: 2000),
          curve: Curves.bounceOut,
        );
      } else {
        _controller.nextPage(
          duration: Duration(milliseconds: 2000),
          curve: Curves.ease,
        );
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
    return SizedBox(
      height: 500,
      width: 600,
      child: PageView.builder(
        controller: _controller,
        itemCount: widget.imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            "assets/RandomUser/${widget.imageUrls[index]}",
            fit: BoxFit.contain,
          );
        },
      ),
    );
  }
}
