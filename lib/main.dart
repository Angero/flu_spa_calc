import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My App',
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.info_outline), onPressed: null),
        ],
      ),
      body: new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Center(
          child: new Column(
            children: <Widget>[

            ],
          ),
        ),
      ),
    );
  }
}
