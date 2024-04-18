import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../PageRouter.dart';
import 'Mcomman.dart';

class Mservice extends StatefulWidget {
  @override
  _MserviceState createState() => _MserviceState();
}

class _MserviceState extends State<Mservice> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Set up the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    // Set up the fade animation
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "My Services  💼 🌐 📱",
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
      backgroundColor: Colors.black87,
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Opacity(
            opacity: _animation.value,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cover.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.3,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Mobile Apps Development",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              "I specialize in developing cross-platform mobile apps for Android and iOS using Flutter. My Mservices include seamless integration of Firebase for robust backend functionalities, ensuring efficient and scalable app solutions.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
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
                              fontSize: 26,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              "I specialize in crafting responsive web applications using flutter. Delivering user-friendly websites with seamless navigation. Ensuring optimal performance and scalability. Additionally, I implement robust backend solutions to enhance functionality.",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/dart.png",
                            width: 200,
                            height: 90,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Dart",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 15.0,
                            percent: 0.8,
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
                      SizedBox(height: 80),
                      Column(
                        children: [
                          Image.asset(
                            "assets/js.png",
                            width: 60,
                            height: 90,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Javascript",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 15.0,
                            percent: 0.70,
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
                      SizedBox(height: 70),
                      Column(
                        children: [
                          Image.asset(
                            "assets/flutter.png",
                            width: 150,
                            height: 90,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Flutter",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 15.0,
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
                      SizedBox(height: 80),
                      Column(
                        children: [
                          Image.asset(
                            "assets/react.png",
                            width: 90,
                            height: 90,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "React Native",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 15.0,
                            percent: 0.75,
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
                      SizedBox(height: 80),
                      Column(
                        children: [
                          Image.asset(
                            "assets/react.png",
                            width: 90,
                            height: 90,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "React",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 15.0,
                            percent: 0.70,
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
                      SizedBox(height: 80),
                      Column(
                        children: [
                          Image.asset(
                            "assets/github.png",
                            width: 100,
                            height: 90,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Github",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 15.0,
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
                      SizedBox(height: 80),
                      Column(
                        children: [
                          Image.asset(
                            "assets/git.png",
                            width: 80,
                            height: 90,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Git",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 15.0,
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
                      SizedBox(height: 70),
                      Column(
                        children: [
                          Image.asset(
                            "assets/firebase.png",
                            width: 150,
                            height: 90,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Firebase",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 15.0,
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
                          SizedBox(height: 50),
                        ],
                      ),
                    ]),
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
