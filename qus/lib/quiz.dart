import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Json extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("Asset/python.json"),
        builder: (context, snapshot) {
          var mydata = json.decode(snapshot.data.toString());
          if (mydata == null) {
            return Scaffold(
              body: Center(
                child: Text("Loading"),
              ),
            );
          } else {
            return quiz(mydata: mydata);
          }
        },
      ),
    );
  }
}

class quiz extends StatefulWidget {
  static String id = 'quiz';
  final mydata;
  const quiz({Key? key, this.mydata}) : super(key: key);

  @override
  _quizState createState() => _quizState();
}

class _quizState extends State<quiz> {
  var mydata;
  _quizState({this.mydata});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(),
    );
  }
}
