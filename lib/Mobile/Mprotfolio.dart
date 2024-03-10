import 'package:flutter/material.dart';
import 'dart:async';
import '../DeskTop/Common.dart';
import '../PageRouter.dart';

class Mprotfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "My Protfolio 💼 🌐 📱",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
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
                    const SizedBox(
                      height: 5,
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
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: const Text(
                            "If you have excess materials such as glass, metal, plastic, and so on, using this app, you can inform us and request their removal. Our services will come and collect these materials, and you can receive a certain amount based on the weight of the materials. So come forward to know about those amounts. We are hoping for your support to help beautify our environment.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
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

                const SizedBox(
                  height: 30,
                ),

                //Second
                Column(
                  children: [
                    const Text(
                      "MathsTriks App",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 5,
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
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: const Text(
                            "With this Mobile application, students can discover solutions for various mathematical problems, including fractions, straight lines, area, perimeter, and more. When users input data into the app, it promptly generates answers for specific questions.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
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
                    const SizedBox(
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
                    const SizedBox(
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
                Column(
                  children: [
                    const Text(
                      "Random Users API",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const AutoScrollRandom(
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
                        const Text(
                          "When the button is clicked,random users and their details will be displayed on the screen. \nYou can explore more users and details by scrolling. \nThere has been used the technique of Flutter API call.",
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildColumn(
      Widget autoScrollWidget, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          autoScrollWidget,
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              const SizedBox(width: 20),
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
