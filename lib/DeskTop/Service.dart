import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'Common.dart';

class Service extends StatefulWidget {
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Set up the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    // Set up the scaling animation
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    // Dispose of the animation controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Opacity(
            opacity: _scaleAnimation.value,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cover.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // NavBar
                    Navbar(context),

                    const SizedBox(
                      height: 10,
                    ),

                    // Content
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 100,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Mobile Apps Development",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  child: Text(
                                    "I specialize in developing cross-platform mobile apps for Android and iOS using Flutter. My services include seamless integration of Firebase for robust backend functionalities, ensuring efficient and scalable app solutions.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "Web Development",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  child: Text(
                                    "I specialize in crafting responsive web applications using flutter. Delivering user-friendly websites with seamless navigation. Ensuring optimal performance and scalability. Additionally, I implement robust backend solutions to enhance functionality.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 100,
                          height: 300,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/dart.png",
                                          width: 100,
                                          height: 90,
                                        ),
                                        const SizedBox(height: 10),
                                        CircularPercentIndicator(
                                          radius: 40.0,
                                          lineWidth: 10.0,
                                          percent: 0.85,
                                          progressColor: Colors.green,
                                          backgroundColor: Colors.white,
                                          center: Text(
                                            "85%",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/flutter.png",
                                          width: 100,
                                          height: 90,
                                        ),
                                        const SizedBox(height: 10),
                                        CircularPercentIndicator(
                                          radius: 40.0,
                                          lineWidth: 10.0,
                                          percent: 0.8,
                                          progressColor: Colors.lightBlue,
                                          backgroundColor: Colors.white,
                                          center: Text(
                                            "80%",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/github.png",
                                          width: 60,
                                          height: 90,
                                        ),
                                        const SizedBox(height: 10),
                                        CircularPercentIndicator(
                                          radius: 40.0,
                                          lineWidth: 10.0,
                                          percent: 0.75,
                                          progressColor: Colors.brown,
                                          backgroundColor: Colors.white,
                                          center: Text(
                                            "75%",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/git.png",
                                          width: 50,
                                          height: 90,
                                        ),
                                        const SizedBox(height: 10),
                                        CircularPercentIndicator(
                                          radius: 40.0,
                                          lineWidth: 10.0,
                                          percent: 0.80,
                                          progressColor: Colors.red,
                                          backgroundColor: Colors.white,
                                          center: Text(
                                            "80%",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/js.png",
                                          width: 40,
                                          height: 90,
                                        ),
                                        const SizedBox(height: 10),
                                        CircularPercentIndicator(
                                          radius: 40.0,
                                          lineWidth: 10.0,
                                          percent: 0.70,
                                          progressColor: Colors.yellow,
                                          backgroundColor: Colors.white,
                                          center: Text(
                                            "70%",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/react.png",
                                          width: 50,
                                          height: 90,
                                        ),
                                        const SizedBox(height: 10),
                                        CircularPercentIndicator(
                                          radius: 40.0,
                                          lineWidth: 10.0,
                                          percent: 0.75,
                                          progressColor: Colors.blueGrey,
                                          backgroundColor: Colors.white,
                                          center: Text(
                                            "75%",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/firebase.png",
                                          width: 80,
                                          height: 90,
                                        ),
                                        const SizedBox(height: 10),
                                        CircularPercentIndicator(
                                          radius: 40.0,
                                          lineWidth: 10.0,
                                          percent: 0.80,
                                          progressColor: Colors.amber,
                                          backgroundColor: Colors.white,
                                          center: Text(
                                            "80%",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
