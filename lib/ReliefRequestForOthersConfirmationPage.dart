import 'package:corona/ReliefReqSuccessOthers.dart';
import 'package:flutter/material.dart';

import 'WidgetModel.dart';

class ReliefRequestForOthersConfirmationPage extends StatefulWidget {
  @override
  _ReliefRequestForOthersConfirmationPageState createState() =>
      _ReliefRequestForOthersConfirmationPageState();
}

class _ReliefRequestForOthersConfirmationPageState
    extends State<ReliefRequestForOthersConfirmationPage> {
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
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  '''Name: jahid hasan\nId:12345678946\nword/Village:pabla\nHouse/Area:231/1 kabirbattala
                  ''',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 30,
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
                          builder: (context) => ReliefReqSuccessOthers()),
                    );
                  },
                  textColor: Colors.white,
                  color: Colors.red,
                  //padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Confirm & Submit",
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
