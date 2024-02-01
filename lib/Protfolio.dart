import 'package:flutter/material.dart';
import 'package:protfolio/Common.dart';

class Protfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // NavBar

            Navbar(context),

            // Content
            SizedBox(
              height: 30,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/Recycle/R4.png",
                  ),
                  Column(
                    children: [
                      Text(
                        "Recycling App ",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "If you have excess materials such as glass, metal, plastic, and so on, using this app,\nyou can inform us and request their removal. \nOur services will come and collect these materials, \nand you can receive a certain amount based on the weight of the materials. \nSo come forward to know about those amounts. \nWe are hoping for your support to help beautify our environment.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                side:
                                    BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              minimumSize: Size(150, 50),
                            ),
                            child: const Text(
                              "View More \n Details ↗",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black12,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: BorderSide(
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

            Row(
              children: [
                Image.asset("assets/Recycle/R1.png"),
                ElevatedButton(onPressed: () {}, child: Text("press")),
                ElevatedButton(onPressed: () {}, child: Text("press")),
              ],
            ),
            Row(
              children: [],
            ),
            Row(
              children: [
                Image.asset("assets/Recycle/R1.png"),
                ElevatedButton(onPressed: () {}, child: Text("press")),
                ElevatedButton(onPressed: () {}, child: Text("press")),
              ],
            ),
            Row(
              children: [
                Image.asset("assets/Recycle/R1.png"),
                ElevatedButton(onPressed: () {}, child: Text("press")),
                ElevatedButton(onPressed: () {}, child: Text("press")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
