import 'package:flutter/material.dart';

class AppBarModel extends StatelessWidget {
  Widget Appbar(String title,) {
    return PreferredSize(
      preferredSize: Size.fromHeight(40.0), // here the desired height

      child: AppBar(
        backgroundColor: Colors.teal,
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {



              print('Click leading');
            },
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
    );
  }


  Widget rowWithField(String fieldName) {
    return Container(
        margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                fieldName,
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
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
