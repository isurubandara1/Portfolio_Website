import "package:flutter/material.dart";
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
                        text: "Mobile App Developer",
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
                            "Proficient in Flutter, Firebase, Git, and Github. Let's collaborate and bring your app ideas to life!",
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
                  "+94 704394554 \n+94 761210812",
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
                  "Flutter, Firebase, React Native, Git, Github",
                  style: TextStyle(color: Colors.white, fontSize: 18),
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
                  "I have a BSc. (Hons) in Computing & Information Systems degree and 1 year of experience.",
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    side: const BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  minimumSize: Size(120, 60),
                ),
                child: const Text("Download CV"),
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
