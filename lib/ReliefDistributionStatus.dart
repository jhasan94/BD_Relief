import 'package:flutter/material.dart';

import 'WidgetModel.dart';

class ReliefDistributionStatus extends StatefulWidget {
  @override
  _ReliefDistributionStatusState createState() => _ReliefDistributionStatusState();
}

class _ReliefDistributionStatusState extends State<ReliefDistributionStatus> {

  AppBarModel appBarModel = AppBarModel();

  Widget tableRow(String id,String By,String Date){
    return TableCell(

      child: Row(
        //border:Border.all(color: Colors.black),
        

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Text(id),
          Text(By),
          Text(Date),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBarModel.Appbar("Relief Ditribution Status",context),
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

              Container(
                margin: const EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(width: 1.0,color: Colors.black),
                  children: [
                    TableRow(
                      
                      children: [
                        
                        tableRow('ID','By','Date'),
                      ]
                    ),
                    TableRow(

                        children: [
                          tableRow('130','My NGO','30/04/2020'),
                        ]
                    ),
                    TableRow(
                        children: [
                          tableRow('130','My NGO','30/04/2020'),
                        ]
                    ),
                    TableRow(
                        decoration:BoxDecoration(
                            color: Colors.green
                        ),
                        children: [
                          tableRow('130','My NGO','30/04/2020'),

                        ]
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
