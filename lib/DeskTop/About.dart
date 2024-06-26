import 'dart:typed_data';

import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:protfolio/DeskTop/Common.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _imageAnimation;
  late Animation<double> _textAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _imageAnimation = Tween<double>(begin: -200, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.easeInOut),
      ),
    );

    _textAnimation = Tween<double>(begin: 200, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0, curve: Curves.easeInOut),
      ),
    );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //NavBar
            Navbar(context),

            //Row
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SlideTransition(
                          position: Tween<Offset>(
                            begin: Offset(2.0, 0.0),
                            end: Offset(0.0, 0.0),
                          ).animate(CurvedAnimation(
                            parent: _controller,
                            curve: Interval(0.0, 0.5, curve: Curves.easeInOut),
                          )),
                          child: Transform.translate(
                            offset: Offset(_imageAnimation.value, 0),
                            child: Image.asset(
                              "assets/1.png",
                              height: 500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            SlideTransition(
                              position: Tween<Offset>(
                                begin: Offset(-2.0, 0.0),
                                end: Offset(0.0, 0.0),
                              ).animate(CurvedAnimation(
                                parent: _controller,
                                curve:
                                    Interval(0.5, 1.0, curve: Curves.easeInOut),
                              )),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: const TextSpan(
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "I am ",
                                      ),
                                      TextSpan(
                                        text: "Mobile App and Web Developer",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 22, 205, 211),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            SlideTransition(
                              position: Tween<Offset>(
                                begin: Offset(0.0, -1.0),
                                end: Offset(0.0, 0.0),
                              ).animate(CurvedAnimation(
                                parent: _controller,
                                curve:
                                    Interval(0.5, 1.0, curve: Curves.easeInOut),
                              )),
                              child: const SelectableText.rich(
                                TextSpan(
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  children: [
                                    TextSpan(
                                        text:
                                            "Hello!  I'm Isuru Bandara, a passionate Mobile developer with experience. \n"),
                                    TextSpan(
                                      text:
                                          "I specialize in creating cross-platform mobile apps, blending functionality with aesthetic appeal. \n",
                                    ),
                                    TextSpan(
                                      text: "Proficient in ",
                                    ),
                                    TextSpan(
                                      text:
                                          "Mobile development and Web Development. Let's collaborate and bring your app ideas to life! ",
                                    ),
                                    TextSpan(
                                      text: "📱✨",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 22, 205, 211)),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 30),
                            Padding(
                              padding: EdgeInsets.only(left: 80, bottom: 10),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Email   :  ",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 19),
                                    ),
                                    TextSpan(
                                      text: "isurumbandara@gmail.com",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 80, bottom: 10),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Phone  :  ",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 19),
                                    ),
                                    TextSpan(
                                      text: "+94 704394554 / +94 761210812",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 80, bottom: 10),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Skills  :  ",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 19),
                                    ),
                                    TextSpan(
                                      text:
                                          "Flutter , React Native, React, Firebase , Spring boot, Git , Github ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 80, bottom: 10),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Programming Languages  :  ",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 19),
                                    ),
                                    TextSpan(
                                      text: "Java, Dart, Javascript",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 80, bottom: 10),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Education  : ",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 19),
                                    ),
                                    TextSpan(
                                      text:
                                          "BSc. Honours Degree in Computing & Information Systems",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SlideTransition(
                              position: Tween<Offset>(
                                begin: Offset(-1.0, 0.0),
                                end: Offset(0.0, 0.0),
                              ).animate(CurvedAnimation(
                                parent: _controller,
                                curve:
                                    Interval(0.5, 1.0, curve: Curves.easeInOut),
                              )),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 180, top: 10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    _launchURL(
                                        'https://drive.google.com/file/d/1vmOJdblHjv4ms5dY9L8KBlUV4hU6InSL/view');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    onPrimary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7.0),
                                      side: const BorderSide(
                                          color: Colors.blue, width: 2.0),
                                    ),
                                    minimumSize: Size(120, 60),
                                  ),
                                  child: const Text("Download CV"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// Future<void> saveFileExample() async {
//   String fileName = 'Isuru_Bandara_CV.pdf';

//   try {
//     final ByteData data = await rootBundle.load('$fileName');
//     final Uint8List bytes = data.buffer.asUint8List();

//     String savedFilePath = await FileSaver.instance.saveFile(
//       name: fileName,
//       bytes: bytes,
//       ext: 'pdf',
//     );

//     print('File saved successfully at: $savedFilePath');
//   } catch (e) {
//     print('Error saving file: $e');
//   }
// }
