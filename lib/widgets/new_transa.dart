import 'package:flutter/material.dart';
import '../main.dart';

class new_transect extends StatelessWidget {
  final Function add_func;
  new_transect(this.add_func);
  final titalcontroller = TextEditingController();
  final amountcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          elevation: 6,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'title'),
                  controller: titalcontroller,
                  // onChanged: (value) {
                  //inputtitle = value;
                  // },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'value'),
                  controller: amountcontroller,
                  // onChanged: (value) {
                  //amountinput = value,
                  //}
                ),
                ElevatedButton(
                    onPressed: () {
                      add_func(titalcontroller.text,
                          double.parse(amountcontroller.text));
                    },
                    child: Text('Note'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(70, 35),
                      onPrimary: Color.fromARGB(255, 0, 0, 255),
                      onSurface: Color.fromARGB(255, 255, 0, 89),
                      surfaceTintColor: Colors.limeAccent.shade400,
                    )),
              ],
            ),
          )),
    );
  }
}
