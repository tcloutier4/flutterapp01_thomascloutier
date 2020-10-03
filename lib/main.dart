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
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.orange, border: Border.all(width: 3)),
                      child: Center(child: Text('Container 1'))),
                ),
                /*Couldn't figure out how to make the container 2 move properly
                tried putting it in a stack and using positioned, but it 
                overflowed by infinity pixels on the right the following was my
                thought process/code, with probably different values for 
                top and left to position it properly*/
/*
                Stack(
                  children: [
                    Positioned(
                        top: 100,
                        left: 10,
                        child: Container(
                            transform: Matrix4.rotationZ(pi / 4),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Center(child: Text('Container 2'))))
                  ],
                ),
*/
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        transform: Matrix4.rotationZ(pi / 4),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Center(child: Text('Container 2'))))
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
                            decoration: BoxDecoration(color: Colors.yellow),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Container 3'))))),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(color: Colors.blue),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('Container 4')))))
              ],
            ),
            Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              border: Border.all(width: 3, color: Colors.white),
                            ),
                            child: Center(
                                child: Text('Container 5',
                                    style: TextStyle(color: Colors.white)))))),
                Expanded(
                    flex: 1,
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(color: Colors.red),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('Con 6',
                                    style: TextStyle(fontSize: 30))))))
              ],
            ),
          ],
        )),
      ),
    );
  }
}
