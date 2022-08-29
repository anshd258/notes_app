import 'package:flutter/material.dart';
import '../widgets/new_transa.dart';
import '../widgets/transect_list.dart';
import '../models/transection.dart';
import 'package:http/http.dart';
import 'dart:convert';

class user_trans extends StatefulWidget {
  @override
  State<user_trans> createState() => _user_transState();
}

class _user_transState extends State<user_trans> {
  final List<Trans> point = [];
  int idm = 0;

  Future<void> _adding(String txtitle, double txvalue) async {
    idm += 1;
    final url = Uri.parse(
        'https://login-test-98bcc-default-rtdb.asia-southeast1.firebasedatabase.app/todo.json');
    await post(
      url,
      body: json.encode({
        'id': idm,
        'title': txtitle,
        'value': txvalue,
        'date': '0-1-5',
      }),
    );
    point.clear();
    final respo = await get(url);
    final mass = await json.decode(respo.body) as Map<String, dynamic>;
    setState(() {
      mass.forEach((id, data) {
        point.add(Trans(
            id: data['id'].toString(),
            title: data['title'],
            value: data['value'],
            date: data['date']));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new_transect(_adding),
        Trans_list(point),
      ],
    );
  }
}
