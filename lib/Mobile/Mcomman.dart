import 'package:flutter/material.dart';

import '../PageRouter.dart';
import 'Mabout.dart';

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage(
                  'assets/drawer.jpg'), // Replace with your image path
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          title: Text(
            "Home Page",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          title: Text(
            'About Page',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutP()),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          title: Text(
            'Protfolio Page',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic),
          ),
          onTap: () {
            // Handle item 2 tap
            Navigator.pop(context);
          },
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          title: Text(
            'Services Page',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Servicep()),
            );
          },
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          title: Text(
            'Contact Page',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic),
          ),
          onTap: () {
            // Handle item 2 tap
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}