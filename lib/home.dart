import 'package:flutter/material.dart';
import 'qoutes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Qoutes> name = [
    Qoutes(name: 'Haris', age: 12),
    Qoutes(name: 'zaid', age: 13),
    Qoutes(name: 'ali', age: 11)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Awesomne app',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children:
            name.map((e) => Text('${e.name}' + ' ' + '${e.age}')).toList(),
      ),
    );
  }
}
