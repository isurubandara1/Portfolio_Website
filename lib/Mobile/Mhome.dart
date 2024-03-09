import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../DeskTop/Common.dart';
import '../DeskTop/Contact.dart';
import 'Mcomman.dart';

class Mhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // Set the desired height here
        child: AppBar(
          backgroundColor: Colors.black87,
          iconTheme: IconThemeData(
              color: Colors.white), // Change the color of the drawer icon here
        ),
      ),
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "👋🏻 𝗛𝗶, 𝗧𝗵𝗲𝗿𝗲!",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Add the Image widget here
              Center(
                child: Container(
                  width: 350,
                  height: 420,
                  // width: MediaQuery.of(context).size.width - 100,
                  // height: MediaQuery.of(context).size.height / 2,
                  child: Image.asset(
                    "assets/1.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              // Continue with the rest of the content...
              const SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
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
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "Flutter Mobile App Developer with a passion for creating seamless digital experiences. Excited about the future of mobile tech, let's connect and bring your app ideas to life!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 17,
                  ),
                ),
              ),

              const SizedBox(
                height: 5,
              ),
              Center(
                child: Padding(
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
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                          side:
                              const BorderSide(color: Colors.blue, width: 2.0),
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
                          side:
                              const BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        minimumSize: Size(120, 60),
                      ),
                      child: const Text("Download CV"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
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
