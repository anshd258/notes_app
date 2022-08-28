import 'package:intl/intl.dart';
import '../models/transection.dart';
import 'package:flutter/material.dart';

class Trans_list extends StatelessWidget {
  final List<Trans> _transect;

  Trans_list(this._transect);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _transect.map((tx) {
          return Card(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10),
                  // ignore: prefer_const_constructors
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
                    // ignore: prefer_const_constructors
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
                    DateFormat('m-s').format(tx.id),
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
    );
  }
}
