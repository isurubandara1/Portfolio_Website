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
              child: Column(
                children: [
                  // NavBar
                  Navbar(context),

                  const SizedBox(
                    height: 10,
                  ),

                  // Content
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 100,
                            height: 320,
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
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Text(
                                      "I specialize in developing cross-platform mobile apps for Android and iOS using Flutter and React Native.\n My services include the seamless integration of Firebase and Spring Boot for robust backend functionalities,\n ensuring efficient and scalable app solutions.",
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
                                    height: 12,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Text(
                                      "I specialize in crafting responsive web applications using React and Flutter,\n delivering user-friendly websites with seamless navigation and ensuring optimal performance and scalability.\nAdditionally, I implement robust backend solutions to enhance functionality.",
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
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 60, right: 60, bottom: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 100,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/java.png",
                                              width: 100,
                                              height: 90,
                                              fit: BoxFit.fill,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Java",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            CircularPercentIndicator(
                                              radius: 40.0,
                                              lineWidth: 12.0,
                                              percent: 0.80,
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
                                        SizedBox(width: 5),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/dart.png",
                                              width: 100,
                                              height: 90,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Dart",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            CircularPercentIndicator(
                                              radius: 40.0,
                                              lineWidth: 12.0,
                                              percent: 0.80,
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
                                        SizedBox(width: 5),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/js.png",
                                              width: 40,
                                              height: 90,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Javascript",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            CircularPercentIndicator(
                                              radius: 40.0,
                                              lineWidth: 12.0,
                                              percent: 0.80,
                                              progressColor: Colors.green,
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
                                        SizedBox(width: 5),
                                        SizedBox(width: 50),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/flutter.png",
                                              width: 80,
                                              height: 90,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Flutter",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            CircularPercentIndicator(
                                              radius: 40.0,
                                              lineWidth: 12.0,
                                              percent: 0.80,
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
                                        SizedBox(width: 5),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/react.png",
                                              width: 50,
                                              height: 90,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "React Native",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            CircularPercentIndicator(
                                              radius: 40.0,
                                              lineWidth: 12.0,
                                              percent: 0.80,
                                              progressColor: Colors.green,
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
                                        SizedBox(width: 5),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/react.png",
                                              width: 50,
                                              height: 90,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "React",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            CircularPercentIndicator(
                                              radius: 40.0,
                                              lineWidth: 12.0,
                                              percent: 0.80,
                                              progressColor: Colors.green,
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
                                        SizedBox(width: 5),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/springboot.png",
                                              width: 50,
                                              height: 90,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Spring boot",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            CircularPercentIndicator(
                                              radius: 40.0,
                                              lineWidth: 12.0,
                                              percent: 0.80,
                                              progressColor: Colors.green,
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
                                        SizedBox(width: 50),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/github.png",
                                              width: 60,
                                              height: 90,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Github",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            CircularPercentIndicator(
                                              radius: 40.0,
                                              lineWidth: 12.0,
                                              percent: 0.80,
                                              progressColor: Colors.green,
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
                                        SizedBox(width: 20),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/git.png",
                                              width: 50,
                                              height: 90,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Git",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            CircularPercentIndicator(
                                              radius: 40.0,
                                              lineWidth: 12.0,
                                              percent: 0.80,
                                              progressColor: Colors.green,
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
                                        SizedBox(width: 20),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/firebase.png",
                                              width: 80,
                                              height: 90,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Firebase",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            CircularPercentIndicator(
                                              radius: 40.0,
                                              lineWidth: 12.0,
                                              percent: 0.80,
                                              progressColor: Colors.green,
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
                                      ]),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
