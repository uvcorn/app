import 'quiz.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List<String> Ima = [
    "Asset/1.png",
    "Asset/2.jpg",
    "Asset/3.png",
    "Asset/4.png",
    "Asset/5.png",
    "Asset/my.jpg",
  ];
  List<String> nam = ["Java", "Python", "Java Script", "Html", "CSS", "My"];
  Widget customcard(String Ima, String nam) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, quiz.id);
          },
          child: Material(
            color: Colors.cyan,
            elevation: 10,
            borderRadius: BorderRadius.circular(25),
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75)),
                        height: 150,
                        width: 150,
                        child: ClipOval(
                          child:
                              Image(fit: BoxFit.cover, image: AssetImage(Ima)),
                        ),
                      )),
                  Center(
                    child: Text(
                      nam,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(20.0),
                  //   child: Text(
                  //     nam,
                  //     style: TextStyle(fontSize: 18, color: Colors.white),
                  //     maxLines: 5,
                  //     textAlign: TextAlign.justify,
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz Star",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          customcard(Ima[0], nam[0]),
          customcard(Ima[1], nam[1]),
          customcard(Ima[2], nam[2]),
          customcard(Ima[3], nam[3]),
          customcard(Ima[4], nam[4]),
          customcard(Ima[5], nam[5]),
        ],
      ),
    );
  }
}
