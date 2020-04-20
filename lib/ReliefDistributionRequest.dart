import 'package:corona/MainMenu.dart';
import 'package:flutter/material.dart';

import 'WidgetModel.dart';

class ReliefDistributionRequest extends StatefulWidget {
  @override
  _ReliefDistributionRequestState createState() =>
      _ReliefDistributionRequestState();
}

class _ReliefDistributionRequestState extends State<ReliefDistributionRequest> {
  AppBarModel appBarModel = AppBarModel();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBarModel.Appbar("Relief Ditribution Request"),
        //background color;
        backgroundColor: Colors.teal,
        body: ListView(
          children: <Widget>[
            Container(
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
                  appBarModel.rowWithField("Organization/Person Details:"),
                  appBarModel.rowWithField("proposed Distribution Area Name:"),
                  appBarModel.rowWithField("Total Unit/Packet"),
                  appBarModel.rowWithField("Distribution Date"),
                  appBarModel.rowWithField("Iteam Details:"),
                  Container(
                    //left, top, right, and bottom
                    width: 300,
                    margin: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MainMenu()),
                        );
                      },
                      textColor: Colors.white,
                      color: Colors.red,
                      //padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Submit",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
