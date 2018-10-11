import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';

Widget tabDs(dynamic pageState) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 0.0, right: 0.0),
    child: ListView(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Дизайн приложения'.toUpperCase(),
          style: TextStyle(color: Colors.amber),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20.0,
        ),
        _radioDsNative(pageState),
        SizedBox(
          height: 10.0,
        ),
        _radioDsFirm(pageState),
        SizedBox(
          height: 10.0,
        ),
        _radioDsCustom(pageState),
        SizedBox(
          height: 40.0,
        ),
      ],
    ),
  );
}

Widget _radioDsNative(dynamic pageState) {
  return RadioListTile(
    value: 0,
    groupValue: calc.Costs.dsValue,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (int value) {
            pageState.setState(() {
              calc.Design design = calc.Design.values[value];
              calc.CostsFunc.selectDesign(design);
            });
          }
        : null,
    secondary: Icon(Icons.spa),
    title: Text(calc.Costs.dsNative.name),
    subtitle: Text(calc.Costs.dsNative.desc),
  );
}

Widget _radioDsFirm(dynamic pageState) {
  return RadioListTile(
    value: 1,
    groupValue: calc.Costs.dsValue,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (int value) {
            pageState.setState(() {
              calc.Design design = calc.Design.values[value];
              calc.CostsFunc.selectDesign(design);
            });
          }
        : null,
    secondary: Icon(Icons.work),
    title: Text(calc.Costs.dsFirm.name),
    subtitle: Text(calc.Costs.dsFirm.desc),
  );
}

Widget _radioDsCustom(dynamic pageState) {
  return RadioListTile(
    value: 2,
    groupValue: calc.Costs.dsValue,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (int value) {
            pageState.setState(() {
              calc.Design design = calc.Design.values[value];
              calc.CostsFunc.selectDesign(design);
            });
          }
        : null,
    secondary: Icon(Icons.pan_tool),
    title: Text(calc.Costs.dsCustom.name),
    subtitle: Text(calc.Costs.dsCustom.desc),
  );
}
