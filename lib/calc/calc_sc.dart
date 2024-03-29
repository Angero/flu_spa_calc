import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';

Widget tabSc(dynamic pageState) {
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
                'Количество экранов'.toUpperCase(),
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
            _integerPickerScreenCount(pageState),
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

Widget _integerPickerScreenCount(dynamic pageState) {
  int _minValue = 0;
  int _maxValue = 50;
  return Row(
    children: <Widget>[
      Expanded(
        child: Container(),
        flex: 1,
      ),
      MaterialButton(
        child: new Text(
          '-',
          style: TextStyle(fontSize: 20.0),
        ),
        minWidth: 50.0,
        height: 50.0,
        onPressed: calc.CostsFunc.existAnyOperationSystem()
            ? () {
                pageState.setState(() {
                  if (calc.Costs.scNum.count > _minValue) {
                    calc.Costs.scNum.count--;
                  }
                });
              }
            : null,
      ),
      Text(
        calc.Costs.scNum.count.toString(),
        style: TextStyle(
          color: calc.CostsFunc.existAnyOperationSystem()
              ? Colors.amber
              : Colors.grey,
          fontSize: 26.0,
        ),
      ),
      MaterialButton(
        child: new Text(
          '+',
          style: TextStyle(fontSize: 20.0),
        ),
        minWidth: 50.0,
        height: 50.0,
        onPressed: calc.CostsFunc.existAnyOperationSystem()
            ? () {
                pageState.setState(() {
                  if (calc.Costs.scNum.count < _maxValue) {
                    calc.Costs.scNum.count++;
                  }
                });
              }
            : null,
      ),
      Expanded(
        child: Container(),
        flex: 1,
      ),
    ],
  );
}
