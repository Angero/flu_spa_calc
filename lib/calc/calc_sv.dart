import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';

Widget tabSv(dynamic pageState) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Text('Сервер'.toUpperCase()),
        Expanded(
          child: Container(),
          flex: 1,
        ),
        _radioSvNoNeed(pageState),
        _radioSvExist(pageState),
        _radioSvCreate(pageState),
        Expanded(
          child: Container(),
          flex: 2,
        ),
      ],
    ),
  );
}

Widget _radioSvNoNeed(dynamic pageState) {
  return RadioListTile(
    value: 0,
    groupValue: calc.Costs.svValue,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (int value) {
      pageState.setState(() {
        calc.Server server = calc.Server.values[value];
        calc.CostsFunc.selectServer(server);
      });
    }
        : null,
    secondary: Icon(Icons.cloud_off),
    title: Text(calc.Costs.svNoNeed.name),
    subtitle: Text(calc.Costs.svNoNeed.desc),
  );
}

Widget _radioSvExist(dynamic pageState) {
  return RadioListTile(
    value: 1,
    groupValue: calc.Costs.svValue,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (int value) {
      pageState.setState(() {
        calc.Server server = calc.Server.values[value];
        calc.CostsFunc.selectServer(server);
      });
    }
        : null,
    secondary: Icon(Icons.cloud_done),
    title: Text(calc.Costs.svExist.name),
    subtitle: Text(calc.Costs.svExist.desc),
  );
}

Widget _radioSvCreate(dynamic pageState) {
  return RadioListTile(
    value: 2,
    groupValue: calc.Costs.svValue,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (int value) {
      pageState.setState(() {
        calc.Server server = calc.Server.values[value];
        calc.CostsFunc.selectServer(server);
      });
    }
        : null,
    secondary: Icon(Icons.cloud_queue),
    title: Text(calc.Costs.svCreate.name),
    subtitle: Text(calc.Costs.svCreate.desc),
  );
}
