import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget tabPb(dynamic pageState) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Text('Публикация'.toUpperCase()),
        Expanded(
          child: Container(),
          flex: 1,
        ),
        _checkboxPbApple(pageState),
        _checkboxPbGoogle(pageState),
        Expanded(
          child: Container(),
          flex: 2,
        ),
      ],
    ),
  );
}

Widget _checkboxPbApple(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.pbApple.name),
    value: calc.Costs.pbApple.used,
    onChanged: calc.Costs.osApple.used
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.pbApple.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(FontAwesomeIcons.appStoreIos),
  );
}

Widget _checkboxPbGoogle(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.pbGoogle.name),
    value: calc.Costs.pbGoogle.used,
    onChanged: calc.Costs.osAndroid.used
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.pbGoogle.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(FontAwesomeIcons.googlePlay),
  );
}
