import 'package:flutter/material.dart';

class BigScreen extends StatefulWidget {
  const BigScreen({super.key});

  @override
  State<BigScreen> createState() => _BigScreenState();
}

class _BigScreenState extends State<BigScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 135,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 138, 166, 189),
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage("assets/images/myntra3.webp"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
