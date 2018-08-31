import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget tabSc() {
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
        _textFieldScreenCount(),
        Expanded(
          child: Container(),
          flex: 1,
        ),
      ],
    ),
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
