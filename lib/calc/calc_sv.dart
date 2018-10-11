import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';

Widget tabSv(dynamic pageState) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 0.0, right: 0.0),
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
                'Сервер'.toUpperCase(),
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
            _radioSvNoNeed(pageState),
            SizedBox(
              height: 10.0,
            ),
            _radioSvExist(pageState),
            SizedBox(
              height: 10.0,
            ),
            _radioSvCreate(pageState),
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
