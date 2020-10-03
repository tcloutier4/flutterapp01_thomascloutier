import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(MyApp) {
    return MaterialApp(
      title: 'Container App',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Row and Column Widgets'),
        ),
        body: Container(
            child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange, border: Border.all(width: 3)),
                ),
                Container(
                    transform: Matrix4.rotationZ(pi / 4),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.white))
              ],
            ),
            Column(
              children: [
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(color: Colors.yellow)))),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            padding: EdgeInsets.all(10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(color: Colors.blue))))
              ],
            ),
            Column(
              children: [
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 70, 10, 70),
                        child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              border: Border.all(width: 3, color: Colors.white),
                            )))),
                // Expanded(child:
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(color: Colors.red),
                    ))
              ],
            ),
          ],
        )),
      ),
    );
  }
}
