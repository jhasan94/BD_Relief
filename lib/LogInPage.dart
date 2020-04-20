import 'package:corona/RegistrationPage.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //background color;
        backgroundColor: Colors.teal,
        body: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              //color: Colors.cyan,
              child: Column(
                children: <Widget>[
                  Container(
                    //left, top, right, and bottom
                    margin: new EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
                    child: Image.asset(
                      'assets/images/bdLogo.png',
                      height: 120,
                      width: 120,
                    ),
                    alignment: Alignment(0.0, -1.0),
                  ),
                  Container(
                    alignment: Alignment.center,
                    //left, top, right, and bottom
                    margin: new EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 20.0),
                    child: Text(
                      'Manikganj District',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        //decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //left, top, right, and bottom
              margin: new EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  hintText: 'NID Number',
                  hintStyle: TextStyle(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Container(
              //left, top, right, and bottom
              margin: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              child: TextField(
                //cursorWidth: 5.0,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  hintText: 'Password',
                  hintStyle: TextStyle(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Container(
              //left, top, right, and bottom
              width: 150,
              margin: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              child: RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.red,
                //padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Log In",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                    alignment: Alignment.center,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogInPage()),
                        );
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: new EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistrationPage()),
                        );
                      },
                      child: Text(
                        'Regester',
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
          ],
        ),
      ),
    );
  }
}
