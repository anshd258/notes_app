// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

import './widgets/user_trans.dart';

void main() async => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //late String inputtitle;
  //late String amountinput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOTES'),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body:
          ListView(scrollDirection: Axis.vertical, shrinkWrap: true, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Color.fromARGB(255, 209, 54, 43),
                child: Text(
                  'TRANSECTION DETAILESS',
                  textAlign: TextAlign.center,
                ),
                elevation: 5,
              ),
            ),
            user_trans(),
          ],
        )
      ]),
    );
  }
}
