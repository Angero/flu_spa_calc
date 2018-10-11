import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget tabOs(dynamic pageState) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Stack(
      alignment: AlignmentDirectional.topStart,
      children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Операционная система'.toUpperCase(),
                style: TextStyle(color: Colors.amber),
              ),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Expanded(
              child: Container(),
              flex: 1,
            ),
            _checkboxOsApple(pageState),
            _checkboxOsAndroid(pageState),
            Expanded(
              child: Container(),
              flex: 1,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _checkboxOsApple(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.osApple.name),
    value: calc.Costs.osApple.used,
    onChanged: (bool value) {
      pageState.setState(() {
        calc.CostsFunc.useOperationSystemApple(value);
//        calc.Costs.osApple.used = value;
      });
    },
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(FontAwesomeIcons.apple),
  );
}

Widget _checkboxOsAndroid(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.osAndroid.name),
    value: calc.Costs.osAndroid.used,
    onChanged: (bool value) {
      pageState.setState(() {
        calc.CostsFunc.useOperationSystemAndroid(value);
//        calc.Costs.osAndroid.used = value;
      });
    },
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.android),
  );
}
