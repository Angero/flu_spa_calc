import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => new _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('Bar Title'),
//      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(),
              flex: 1,
            ),
            Image.asset('images/logo_only_border_250.png'),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Калькулятор расчета стоимости разработки мобильного приложения для смартфонов Apple и Android',
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Container(),
              flex: 1,
            ),
            _outlineButtonEnter(context),
          ],
        ),
      ),
    );
  }
}

Widget _outlineButtonEnter(BuildContext context) {
  return OutlineButton(
    child: new Text('Начать'.toUpperCase()),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
    textColor: Colors.amber,
    onPressed: () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/calc', (Route<dynamic> route) => false);
    },
  );
}
