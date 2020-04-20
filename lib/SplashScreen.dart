import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'LogInPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LogInPage()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            //left, top, right, and bottom
            margin: new EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
            child: Image.asset(
              'assets/images/bdLogo.png',
              height: 150,
              width: 150,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Relief Distribution Application',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Manikganj District',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Powered by ServicEngine Limited',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
