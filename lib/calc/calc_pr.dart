import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';

Widget tabPr(dynamic pageState) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ListView(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Стадии проекта'.toUpperCase(),
          textAlign: TextAlign.center,
        ),
//        Expanded(child: Container(), flex: 1,),
        SizedBox(
          height: 20.0,
        ),
        _checkboxPrMap(pageState),
        SizedBox(
          height: 10.0,
        ),
        _checkboxPrSketch(pageState),
        SizedBox(
          height: 10.0,
        ),
        _checkboxPrPrototype(pageState),
        SizedBox(
          height: 10.0,
        ),
        _checkboxPrTask(pageState),
//        Expanded(child: Container(), flex: 2,),
      ],
    ),
  );
}

Widget _checkboxPrMap(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.prMap.name),
    subtitle: Text(calc.Costs.prMap.desc),
    value: calc.Costs.prMap.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.prMap.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.map),
  );
}

Widget _checkboxPrSketch(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.prSketch.name),
    subtitle: Text(calc.Costs.prSketch.desc),
    value: calc.Costs.prSketch.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.prSketch.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.brush),
  );
}

Widget _checkboxPrPrototype(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.prPrototype.name),
    subtitle: Text(calc.Costs.prPrototype.desc),
    value: calc.Costs.prPrototype.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.prPrototype.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.category),
  );
}

Widget _checkboxPrTask(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.prTask.name),
    subtitle: Text(calc.Costs.prTask.desc),
    value: calc.Costs.prTask.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.prTask.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.build),
  );
}
