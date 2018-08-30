import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';

Widget tabDt(dynamic pageState) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Text('Тип устройства'.toUpperCase()),
        Expanded(
          child: Container(),
          flex: 1,
        ),
        _checkboxDtPhone(pageState),
        _checkboxDtTablet(pageState),
        Expanded(
          child: Container(),
          flex: 2,
        ),
      ],
    ),
  );
}

Widget _checkboxDtPhone(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.dtPhone.name),
    value: calc.Costs.dtPhone.used,
    onChanged: (bool value) {
      pageState.setState(() {
        if (calc.CostsFunc.existAnyOperationSystem()) {
          calc.Costs.dtPhone.used = value;
        } else {
          print('RA: Need to choose one or two operation system');
          //TODO: Show SnackBar
        }
      });
    },
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.phone_iphone),
  );
}

Widget _checkboxDtTablet(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.dtTablet.name),
    value: calc.Costs.dtTablet.used,
    onChanged: (bool value) {
      pageState.setState(() {
        if (calc.CostsFunc.existAnyOperationSystem()) {
          calc.Costs.dtTablet.used = value;
        } else {
          print('RA: Need to choose one or two operation system');
          //TODO: Show SnackBar
        }
      });
    },
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.tablet_mac),
  );
}
