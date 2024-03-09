import 'package:flutter/material.dart';

import '../PageRouter.dart';
import 'Mabout.dart';

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: const Center(
            child: CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage(
                  'assets/drawer.jpg'), // Replace with your image path
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text(
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
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text(
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
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text(
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
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text(
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
        const SizedBox(
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
