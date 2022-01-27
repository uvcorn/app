import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';

class fvl extends StatefulWidget {
  @override
  State<fvl> createState() => _fvlState();
}

class _fvlState extends State<fvl> {
  @override
  void intState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Text(
          "Quiz star\n Test Your IQ",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
