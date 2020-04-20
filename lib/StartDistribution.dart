import 'package:corona/MainMenu.dart';
import 'package:flutter/material.dart';

import 'WidgetModel.dart';

class StartDistribution extends StatefulWidget {
  @override
  _StartDistributionState createState() => _StartDistributionState();
}

class _StartDistributionState extends State<StartDistribution> {
  AppBarModel appBarModel = AppBarModel();

  Widget tbR(String sl, String Name, String NID) {
    return TableCell(
      child: Row(
        //border:Border.all(color: Colors.black),

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(sl),
          Text(Name),
          Text(NID),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: appBarModel.Appbar("Start Ditribution"),
          //background color;
          backgroundColor: Colors.teal,
          body: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Relief Id:",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //decoration: TextDecoration.underline,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 30,
                            alignment: Alignment.topLeft,
                            child: TextField(
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
                    //appBarModel.rowWithField("Relief Id"),
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
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Name",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    //decoration: TextDecoration.underline,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 30,
                                alignment: Alignment.topLeft,
                                child: TextField(
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "NID",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    //decoration: TextDecoration.underline,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 30,
                                alignment: Alignment.topLeft,
                                child: TextField(
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
                          /*width: 30,
                          height: 20,
                          //margin: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                          decoration: BoxDecoration(
                            color: Colors.red
                          ),*/
                          child: IconButton(
                            alignment: Alignment.bottomCenter,
                            icon: Icon(Icons.add),
                            onPressed: () {
                              print('Click leading');
                            },
                          ),
                        ),
                      ],
                    )),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Table(
                        border:
                            TableBorder.all(width: 1.0, color: Colors.black),
                        children: [
                          TableRow(children: [
                            tbR('SL', 'Name', 'NID'),
                          ]),
                          TableRow(children: [
                            tbR('1', '1234567890123', '1234567890123'),
                          ]),
                          TableRow(children: [
                            tbR('2', '1234567890123', '1234567890123'),
                          ]),
                          TableRow(children: [
                            tbR('3', '1234567890123', '1234567890123'),
                          ]),
                          TableRow(children: [
                            tbR('4', '1234567890123', '1234567890123'),
                          ]),
                          TableRow(children: [
                            tbR('5', '1234567890123', '1234567890123'),
                          ]),
                          TableRow(children: [
                            tbR('6', '1234567890123', '1234567890123'),
                          ]),
                          TableRow(children: [
                            tbR('7', '1234567890123', '1234567890123'),
                          ]),
                        ],
                      ),
                    ),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Name",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    //decoration: TextDecoration.underline,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 30,
                                alignment: Alignment.topLeft,
                                child: TextField(
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
                          width: 150,
                          margin:
                              new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainMenu()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.red,
                            //padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Finish",
                            ),
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
