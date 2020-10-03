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
          children: [
            Column(
              children: [
                Container(
                  child: ContainerName('Container 1', Colors.orange),
                ),
                Container(child: ContainerName('Container 2', Colors.white))
              ],
            ),
            Column(
              children: [
                ContainerName('Container 3', Colors.yellow),
                ContainerName('Container 4', Colors.blue)
              ],
            ),
            Column(
              children: [
                ContainerName('Container 5', Colors.black),
                ContainerName('Container 6', Colors.red)
              ],
            ),
          ],
        )),
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
