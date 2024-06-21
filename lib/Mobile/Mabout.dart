import "dart:typed_data";

import "package:file_saver/file_saver.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:url_launcher/url_launcher.dart";
import "Mcomman.dart";

class Mabout extends StatelessWidget {
  const Mabout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(50.0), // Set the desired height here
        child: AppBar(
          backgroundColor: Colors.black87,
          iconTheme: const IconThemeData(
              color: Colors.white), // Change the color of the drawer icon here
        ),
      ),
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            // Add the Image widget here
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: 400,
                  height: 400,
                  // width: MediaQuery.of(context).size.width - 100,
                  // height: MediaQuery.of(context).size.height / 2,
                  child: Image.asset(
                    "assets/1.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
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
                          color: Color.fromARGB(255, 22, 205, 211),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: SelectableText.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    children: [
                      TextSpan(
                          text:
                              "Hello!  I'm Isuru Bandara, a passionate Mobile developer with experience. I specialize in creating cross-platform mobile apps, blending functionality with aesthetic appeal.\n\n"),
                      TextSpan(
                        text:
                            "Proficient in Mobile development and Web Development. Let's collaborate and bring your app ideas to life!",
                      ),
                      TextSpan(
                        text: "📱✨",
                        style:
                            TextStyle(color: Color.fromARGB(255, 22, 205, 211)),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),
            Center(
              child: const Padding(
                padding: const EdgeInsets.only(left: 25, right: 10),
                child: SelectableText(
                  "isurumbandara@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),
            Center(
              child: const Padding(
                padding: EdgeInsets.only(left: 25, right: 10),
                child: SelectableText(
                  "+94 704394554\n+94 761210812",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),
            Center(
              child: const Padding(
                padding: EdgeInsets.only(left: 25, right: 10),
                child: SelectableText(
                  "Flutter, React Native, React \n Firebase, Spring Boot, Git, Github",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),
            Center(
              child: const Padding(
                padding: EdgeInsets.only(left: 25, right: 10),
                child: SelectableText(
                  "Java,Dart,Javascript",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: const Padding(
                padding: EdgeInsets.only(left: 25, right: 10),
                child: SelectableText(
                  "BSc. (Hons) in Computing & Information Systems Degree",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            Center(
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
                    side: const BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  minimumSize: Size(120, 60),
                ),
                child: const Text(
                  "Download CV",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
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
