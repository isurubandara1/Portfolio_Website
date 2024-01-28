import 'package:flutter/material.dart';

Widget Navbar(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.width * 0.05,
    color: Colors.black87,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 40),
        Text(
          "< 𝕴𝖘𝖚𝖗𝖚 >",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        const SizedBox(width: 80),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Home",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "About",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Experience",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Projects",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),
          ),
        ),
        const SizedBox(width: 40),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.black12,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
              side: BorderSide(color: Colors.blue, width: 2.0),
            ),
          ),
          child: const Text("Contact"),
        ),
      ],
    ),
  );
}
