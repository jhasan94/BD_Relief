import 'package:corona/MainMenu.dart';
import 'package:flutter/material.dart';

import 'WidgetModel.dart';

class ReliefReqSuccessOthers extends StatefulWidget {
  @override
  _ReliefReqSuccessOthersState createState() => _ReliefReqSuccessOthersState();
}

class _ReliefReqSuccessOthersState extends State<ReliefReqSuccessOthers> {
  AppBarModel appBarModel = AppBarModel();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBarModel.Appbar("Relief Request for Others",context),
        //background color;
        backgroundColor: Colors.teal,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                //alignment: Alignment.topLeft,
                child: Text(
                  'Request Success!!!!!!!!',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 50,
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
                    "Back to Main Menu",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
