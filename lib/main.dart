// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'transection.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Trans> transections = [
    Trans(
      id: 't1',
      title: 'shoes',
      value: 55,
      date: DateTime.now(),
    ),
    Trans(
      id: 't2',
      title: 'grocery',
      value: 120,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('NOTES'),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.red,
                child: Text(
                  'trans',
                  textAlign: TextAlign.center,
                ),
                elevation: 5,
              ),
            ),
            Card(
                elevation: 6,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: 'title'),
                      ),
                      TextField(
                          decoration: InputDecoration(labelText: 'value')),
                      ElevatedButton(
                          onPressed: null,
                          child: Text('Note'),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(70, 35),
                            primary: Color.fromARGB(209, 44, 44, 212),
                            onSurface: Colors.pinkAccent.shade400,
                          )),
                    ],
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: transections.map((tx) {
                return Card(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.pink.shade900,
                              width: 1.5,
                              style: BorderStyle.solid),
                        ),
                        child: Text(
                          ' \$  ${tx.value}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.indigo,
                          ),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          tx.id,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: Colors.amber.shade600,
                          ),
                        ),
                        Text(
                          tx.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.deepOrange.shade900,
                          ),
                        ),
                        Text(
                          DateFormat.MMMMd().format(tx.date),
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 13,
                            color: Colors.teal.shade700,
                          ),
                        ),
                      ],
                    )
                  ],
                ));
              }).toList(),
            ),
          ],
        ));
  }
}
