import 'package:corona/ReliefRequestForOthersConfirmationPage.dart';
import 'package:flutter/material.dart';

import 'WidgetModel.dart';

class ReliefReqForOthers extends StatefulWidget {
  @override
  _ReliefReqForOthersState createState() => _ReliefReqForOthersState();
}

class _ReliefReqForOthersState extends State<ReliefReqForOthers> {
  AppBarModel appBarModel = AppBarModel();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBarModel.Appbar("Relief Request for Others",context),
        //background color;
        backgroundColor: Colors.teal,
        body: ListView(
          children: <Widget>[
            appBarModel.rowWithField("Full Name *"),
            appBarModel.rowWithField("NID Number *"),
            appBarModel.rowWithField("Division Name *"),
            appBarModel.rowWithField("Zila or District Name *"),
            appBarModel.rowWithField("City Corporation Name "),
            appBarModel.rowWithField("Municipality Name "),
            appBarModel.rowWithField("Upazila Name "),
            appBarModel.rowWithField("Thana Name "),
            appBarModel.rowWithField("Union Name "),
            appBarModel.rowWithField("Word Number or Village Name "),
            appBarModel.rowWithField("House Number or Area Name "),
            SizedBox(
              width: 15,
            ),
            Container(
              //left, top, right, and bottom
              width: 150,
              margin: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ReliefRequestForOthersConfirmationPage()),
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
    );
  }
}
