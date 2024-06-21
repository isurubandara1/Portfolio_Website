import 'dart:typed_data';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:protfolio/DeskTop/About.dart';
import 'package:protfolio/DeskTop/Service.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

import 'Common.dart';
import 'Contact.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          // NavBar
          Navbar(context),
          const SizedBox(
            height: 10,
          ),
          // Content
          Expanded(
            child: SingleChildScrollView(
              child: AnimatedContent(),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedContent extends StatefulWidget {
  @override
  _AnimatedContentState createState() => _AnimatedContentState();
}

class _AnimatedContentState extends State<AnimatedContent>
    with TickerProviderStateMixin {
  late AnimationController _oneTimeController;
  late AnimationController _continuousController;
  late Animation<Offset> _textOffsetAnimation;
  late Animation<Offset> _imageOffsetAnimation;
  late Animation<double> _fadeInTextAnimation;
  late Animation<double> _danceAnimation;

  @override
  void initState() {
    super.initState();

    _oneTimeController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    _continuousController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    _textOffsetAnimation = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _oneTimeController,
      curve: Interval(0.0, 0.5, curve: Curves.easeOut),
    ));

    _imageOffsetAnimation = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _oneTimeController,
      curve: Interval(0.0, 0.7, curve: Curves.easeOut),
    ));

    _fadeInTextAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _oneTimeController,
      curve: Interval(0.7, 1.0, curve: Curves.easeIn),
    ));

    _continuousController = AnimationController(
      duration: Duration(seconds: 1), // Set the duration here
      vsync: this,
    );

    _danceAnimation = Tween<double>(
      begin: 0.0,
      end: 20.0,
    ).animate(CurvedAnimation(
      parent: _continuousController,
      curve: Curves.easeIn,
    ));

    _oneTimeController.forward();
    _continuousController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _oneTimeController.dispose();
    _continuousController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text and buttons
            SlideTransition(
              position: _textOffsetAnimation,
              child: FadeTransition(
                opacity: _fadeInTextAnimation,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "👋🏻 𝗛𝗶, 𝗧𝗵𝗲𝗿𝗲!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        children: [
                          TextSpan(
                            text: "I'm ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                            ),
                          ),
                          TextSpan(
                            text: "Isuru Bandara", // Change name here
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Mobile App and Web Developer with a passion for creating seamless digital experiences.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      "Excited about the future of mobile tech, let's connect and bring your app ideas to life!",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Image.asset(
                              "assets/linkdin.png",
                              fit: BoxFit.fill,
                              width: 27,
                            ),
                            onPressed: () {
                              _launchURL(
                                  'https://www.linkedin.com/in/isuru-bandara-b51aab244/');
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            icon: Image.asset(
                              "assets/github.png",
                              fit: BoxFit.fill,
                              width: 40,
                            ),
                            onPressed: () {
                              _launchURL('https://github.com/isurubandara1');
                            },
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          IconButton(
                            icon: Image.asset(
                              "assets/stackflow.png",
                              fit: BoxFit.fill,
                              width: 38,
                            ),
                            onPressed: () {
                              _launchURL(
                                  'https://stackoverflow.com/users/16578521/isuru-bandara');
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        DancingButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Contact()),
                            );
                          },
                          text: "Contact",
                          color: Colors.blue,
                          danceAnimation: _danceAnimation,
                        ),
                        const SizedBox(width: 16),
                        DancingButton(
                          onPressed: () {
                            saveFileExample();
                          },
                          text: "Download CV",
                          color: Colors.black12,
                          danceAnimation: _danceAnimation,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
            // Profile image
            SlideTransition(
              position: _imageOffsetAnimation,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: SizedBox(
                    width: 450,
                    height: 450,
                    child: Image.asset(
                      "assets/1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DancingButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;
  final Animation<double> danceAnimation;

  DancingButton({
    required this.onPressed,
    required this.text,
    required this.color,
    required this.danceAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: danceAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, danceAnimation.value),
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              primary: color,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0),
                side: const BorderSide(color: Colors.blue, width: 2.0),
              ),
              minimumSize: Size(120, 60),
            ),
            child: Text(text),
          ),
        );
      },
    );
  }
}

// Function to open a URL
void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//Download the CV from button
Future<void> saveFileExample() async {
  String fileName = 'Isuru_Bandara_CV.pdf';

  try {
    final ByteData data = await rootBundle.load('$fileName');
    final Uint8List bytes = data.buffer.asUint8List();

    String savedFilePath = await FileSaver.instance.saveFile(
      name: fileName,
      bytes: bytes,
      ext: 'pdf',
    );

    print('File saved successfully at: $savedFilePath');
  } catch (e) {
    print('Error saving file: $e');
  }
}
