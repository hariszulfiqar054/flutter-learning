import 'package:flutter/material.dart';
import 'qoutes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Qoutes> name = [
    Qoutes(name: 'Haris is a good guy', age: 12),
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
        children: name
            .map((e) => new QouteCard(
                qoute: e,
                onDelete: () {
                  setState(() {
                    name.remove(e);
                  });
                }))
            .toList(),
      ),
    );
  }
}

class QouteCard extends StatelessWidget {
  final Qoutes qoute;
  final Function onDelete;
  QouteCard({Key key, this.qoute, this.onDelete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              qoute.name,
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              qoute.age.toString(),
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 8,
            ),
            FlatButton.icon(
                onPressed: onDelete,
                icon: Icon(Icons.delete),
                label: Text('Press to delete'))
          ],
        ),
      ),
    );
  }
}
