import 'package:flutter/material.dart';
import 'home.dart';
import 'quiz.dart';

void main(List<String> args) {
  runApp(MyApp());
}
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quize Star",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Home(),
      routes: {
        quiz.id: (context) => quiz(),
      },
    );
  }
}
