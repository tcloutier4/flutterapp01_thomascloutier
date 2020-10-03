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

class ContainerName extends StatelessWidget {
  final String name;
  final Color color;

  const ContainerName(this.name, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 100,
        width: 100,
        decoration: BoxDecoration(color: color),
        child: Text(name, textAlign: TextAlign.center));
  }
}
