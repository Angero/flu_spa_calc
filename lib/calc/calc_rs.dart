import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';

dynamic _pageState;
String _currentResult = '';

Widget tabRs(dynamic pageState) {
  _pageState = pageState;
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: <Widget>[
        Expanded(child: Container(), flex: 1,),
        _materialButtonRun(),
        SizedBox(height: 40.0,),
        _textResult(),
        Expanded(child: Container(), flex: 1,),
      ],
    ),
  );
}

Widget _materialButtonRun() {
  return MaterialButton(
    child: new Text('Рассчитать стоимость'.toUpperCase()),
    minWidth: 120.0,
    height: 50.0,
    color: Colors.amber,
    textColor: Colors.black,
    onPressed: () {
      _pageState.setState(() {
        _currentResult = calc.CostsCalc.calculate();
      });
    },
  );
}

Widget _textResult() {
  return Text(
    _currentResult,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.amber,
      fontSize: 20.0,
    ),
  );
}

