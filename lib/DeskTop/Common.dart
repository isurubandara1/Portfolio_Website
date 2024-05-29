import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:protfolio/DeskTop/About.dart';
import '../PageRouter.dart';
import 'Service.dart';
import 'Contact.dart';
import 'Home.dart';

Widget Navbar(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.width * 0.05,
    color: Colors.black87,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 40),
        const Text(
          "< 𝕴𝖘𝖚𝖗𝖚 >",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(width: 80),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: const AnimatedText(
            text: "𝐇𝐨𝐦𝐞",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutP()),
            );
          },
          child: const AnimatedText(
            text: "𝐀𝐛𝐨𝐮𝐭",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Servicep()),
            );
          },
          child: const AnimatedText(
            text: "𝐒𝐞𝐫𝐯𝐢𝐜𝐞𝐬",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pprotfolio()),
            );
          },
          child: const AnimatedText(
            text: "𝐏𝐫𝐨𝐣𝐞𝐜𝐭𝐬",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18),
          ),
        ),
        const SizedBox(width: 40),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Contact()),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.black12,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
              side: const BorderSide(color: Colors.blue, width: 2.0),
            ),
          ),
          child: const Text(
            "𝐂𝐨𝐧𝐭𝐚𝐜𝐭",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18),
          ),
        ),
      ],
    ),
  );
}

class AnimatedText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final Duration duration;

  const AnimatedText(
      {Key? key,
      required this.text,
      this.style,
      this.duration = const Duration(seconds: 15)})
      : super(key: key);

  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..repeat(reverse: true);

    _sizeAnimation = Tween<double>(begin: 18, end: 24).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _colorAnimation = ColorTween(begin: Colors.white, end: Colors.blue).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Text(
          widget.text,
          style: widget.style?.copyWith(
                  fontSize: _sizeAnimation.value,
                  color: _colorAnimation.value) ??
              TextStyle(
                  fontSize: _sizeAnimation.value, color: _colorAnimation.value),
        );
      },
    );
  }
}

Widget lineSpace(BuildContext context, double height) {
  return Container(
    color: Colors.grey,
    height: height,
    width: MediaQuery.of(context).size.width,
  );
}
