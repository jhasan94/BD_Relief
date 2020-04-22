import 'package:corona/OtpPage.dart';
import 'package:flutter/material.dart';
import 'WidgetModel.dart';
import 'package:firebase_database/firebase_database.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  //final _textFieldController = TextEditingController();

  //firebase Database variable
  final fb = FirebaseDatabase.instance;
  final _textFieldController = TextEditingController();
  final name = "Name";


  //Widget class reference
  AppBarModel appBarModel = AppBarModel();
  @override
  Widget build(BuildContext context) {
    final ref = fb.reference();
    return MaterialApp(

      home: Scaffold(
        //app bar start
        appBar: appBarModel.Appbar("User Registration",context),
        //appBar:appBarModel.Appbar1("User Registration",context),



        //background color;
        backgroundColor: Colors.teal,
        body: ListView(
          children: <Widget>[
        Container(
        margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'testfirebase',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    //decoration: TextDecoration.underline,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                //width: 150,
                height: 30,
                child: TextField(
                  //cursorWidth: 5.0,
                  controller: _textFieldController,
                  textAlign: TextAlign.justify,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              )
            ],
          )),
            appBarModel.rowWithField("Full Name *"),
            appBarModel.rowWithField("NID Number *"),
            appBarModel.rowWithField("Mobile Number *"),
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
                  ref.child(name).set(_textFieldController.text);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpPage()),
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
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _textFieldController.dispose();
    super.dispose();
  }
}
