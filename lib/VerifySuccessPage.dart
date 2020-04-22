import 'package:corona/MainMenu.dart';
import 'package:flutter/material.dart';

import 'WidgetModel.dart';

class VerifySuccessPage extends StatefulWidget {
  @override
  _VerifySuccessPageState createState() => _VerifySuccessPageState();
}

class _VerifySuccessPageState extends State<VerifySuccessPage> {
  AppBarModel appBarModel = AppBarModel();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBarModel.Appbar("User Registration",context),
        //background color;
        backgroundColor: Colors.teal,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Registration Success !!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
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
                      MaterialPageRoute(builder: (context) => MainMenu()),
                    );
                  },
                  textColor: Colors.white,
                  color: Colors.red,
                  //padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Next",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
