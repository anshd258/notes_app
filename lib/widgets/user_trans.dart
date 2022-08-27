import 'package:flutter/material.dart';
import '../widgets/new_transa.dart';
import '../widgets/transect_list.dart';
import '../models/transection.dart';

class user_trans extends StatefulWidget {
  @override
  State<user_trans> createState() => _user_transState();
}

class _user_transState extends State<user_trans> {
  final List<Trans> _usertransection = [];

  void _adding(String txtitle, double txvalue) {
    final netx = Trans(
      title: txtitle,
      value: txvalue,
      date: DateTime.now(),
      id: DateTime.now(),
    );

    setState(() {
      _usertransection.add(netx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new_transect(_adding),
        Trans_list(_usertransection),
      ],
    );
  }
}
