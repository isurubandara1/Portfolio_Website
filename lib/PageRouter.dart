import "package:flutter/material.dart";
import "package:protfolio/DeskTop/About.dart";
import "package:protfolio/DeskTop/Service.dart";
import "package:protfolio/Mobile/Mabout.dart";
import "package:protfolio/Mobile/Mservice.dart";
import "DeskTop/Home.dart";
import "Mobile/Mhome.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            // Display Desktop version for widths greater than 800
            return HomePage();
          } else {
            return Mhome();
          }
        },
      ),
    );
  }
}

class AboutP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            // Display Desktop version for widths greater than 800
            return About();
          } else {
            return Mabout();
          }
        },
      ),
    );
  }
}

class Servicep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 700) {
            // Display Desktop version for widths greater than 800
            return Service();
          } else {
            return Mservice();
          }
        },
      ),
    );
  }
}
