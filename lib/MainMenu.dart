import 'package:corona/ReliefDistributionRequest.dart';
import 'package:corona/ReliefDistributionStatus.dart';
import 'package:corona/ReliefReqForOthers.dart';
import 'package:corona/ReliefRequestForMe.dart';
import 'package:corona/StartDistribution.dart';
import 'package:flutter/material.dart';

import 'WidgetModel.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  AppBarModel appBarModel = AppBarModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBarModel.Appbar("Main Menu"),
        //background color;
        backgroundColor: Colors.teal,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                //left, top, right, and bottom
                width: 300,
                margin: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReliefRequestForMe()),
                    );
                  },
                  textColor: Colors.white,
                  color: Colors.red,
                  //padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Relief Request for Me",
                  ),
                ),
              ),
              Container(
                //left, top, right, and bottom
                width: 300,
                margin: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReliefReqForOthers()),
                    );
                  },
                  textColor: Colors.white,
                  color: Colors.red,
                  //padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Relief Request for Others",
                  ),
                ),
              ),
              Container(
                //left, top, right, and bottom
                width: 300,
                margin: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReliefDistributionRequest()),
                    );
                  },
                  textColor: Colors.white,
                  color: Colors.red,
                  //padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Relief Distribution Request",
                  ),
                ),
              ),
              Container(
                //left, top, right, and bottom
                width: 300,
                margin: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StartDistribution()),
                    );
                  },
                  textColor: Colors.white,
                  color: Colors.red,
                  //padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Start Distribution",
                  ),
                ),
              ),
              Container(
                //left, top, right, and bottom
                width: 300,
                margin: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReliefDistributionStatus()),
                    );
                  },
                  textColor: Colors.white,
                  color: Colors.red,
                  //padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Relief Distribution Status",
                  ),
                ),
              ),
              /*btn("Relief Request for Me"),
              btn("Relief Request for Others"),
              btn("Relief Distribution Request"),
              btn("Start Distribution"),
              btn("Relief Distribution Status"),*/
            ],
          ),
        ),
      ),
    );
  }
}
