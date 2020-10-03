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
      ),
    );
  }
}
