import 'package:corona/VerifySuccessPage.dart';
import 'package:flutter/material.dart';

import 'WidgetModel.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  AppBarModel appBarModel = AppBarModel();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBarModel.Appbar("User Registration"),
        //background color;
        backgroundColor: Colors.teal,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Please enter the code sent to your mobile',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      child: TextField(
                        //cursorWidth: 5.0,
                        textAlign: TextAlign.justify,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: TextField(
                        //cursorWidth: 5.0,
                        textAlign: TextAlign.justify,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: TextField(
                        //cursorWidth: 5.0,
                        textAlign: TextAlign.justify,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: TextField(
                        //cursorWidth: 5.0,
                        textAlign: TextAlign.justify,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ],
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
                          builder: (context) => VerifySuccessPage()),
                    );
                  },
                  textColor: Colors.white,
                  color: Colors.red,
                  //padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "verify Code",
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 25),
                child: FlatButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()),);
                  },
                  child: Text(
                    'Resend',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                    ),
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
