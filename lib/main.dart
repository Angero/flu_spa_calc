import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'confirm.dart';
import 'calc/calc_pages.dart';
import 'start.dart';

void main() {
  SystemChrome
      .setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SPA Calculator',
      theme: _themeData,
      routes: <String, WidgetBuilder>{
        '/calc': (BuildContext context) => new CalcPagesPage(),
        '/confirm': (BuildContext context) => new ConfirmPage(),
      },
      home: StartPage(),
    );
  }
}

final ThemeData _themeData = new ThemeData(
  brightness: Brightness.dark,
  accentColor: Colors.amber,
  toggleableActiveColor: Colors.amber,
);
