import 'package:flutter/material.dart';
import 'package:protfolio/Common.dart';
import 'package:protfolio/contact.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // NavBar

            Navbar(context),
            const SizedBox(
              height: 10,
            ),

            // Content
            AnimatedContent(),
          ],
        ),
      ),
    );
  }
}

class AnimatedContent extends StatefulWidget {
  @override
  _AnimatedContentState createState() => _AnimatedContentState();
}

class _AnimatedContentState extends State<AnimatedContent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _textOffsetAnimation;
  late Animation<Offset> _imageOffsetAnimation;
  late Animation<double> _fadeInTextAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    _textOffsetAnimation = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.0, 0.5, curve: Curves.easeOut),
    ));

    _imageOffsetAnimation = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.0, 0.7, curve: Curves.easeOut),
    ));

    _fadeInTextAnimation = Tween<double>(
      begin: 1.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.7, 1.0, curve: Curves.easeIn),
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
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
                    "Flutter Mobile App Developer with a passion for creating seamless digital experiences.",
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
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Contact()),
                          );
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
                        child: const Text("Contact"),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black12,
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
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Spacer
          const SizedBox(width: 16),

          // Profile image
          SlideTransition(
            position: _imageOffsetAnimation,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // border: Border.all(
                //    color: Colors.blue,
                //   width: 2,
                // ),
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
