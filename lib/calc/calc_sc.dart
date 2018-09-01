import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget tabSc(dynamic pageState) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Text('Количество экранов'.toUpperCase()),
        Expanded(
          child: Container(),
          flex: 1,
        ),
        _integerPickerScreenCount(pageState),
//        _textFieldScreenCount(),
        Expanded(
          child: Container(),
          flex: 2,
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

Widget _textFieldScreenCount() {
  final TextEditingController controller = new TextEditingController();
  controller.text = calc.Costs.scNum.count.toString();
  return TextField(
    maxLength: 2,
    inputFormatters: [
      WhitelistingTextInputFormatter(RegExp('[0-9]')),
    ],
    keyboardType: TextInputType.number,
    enabled: calc.CostsFunc.existAnyOperationSystem(),
    controller: controller,
    decoration: new InputDecoration(
        labelText: 'Количество экранов',
        hintText: 'Введите примерное количество экранов'),
    onChanged: (String value) {
      if (calc.CostsFunc.existAnyOperationSystem()) {
        calc.Costs.scNum.count = int.parse(value);
      } else {
        calc.Costs.scNum.count = 0;
      }
      controller.text = calc.Costs.scNum.count.toString();
    },
  );
}
