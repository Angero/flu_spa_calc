import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';

Widget tabSo(dynamic pageState) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Text('Ориентация экрана'.toUpperCase()),
        Expanded(
          child: Container(),
          flex: 1,
        ),
        Text('Смартфон'.toUpperCase()),
        _checkboxSoPhonePort(pageState),
        _checkboxSoPhoneLand(pageState),
        SizedBox(
          height: 40.0,
        ),
        Text('Планшет'.toUpperCase()),
        _checkboxSoTabletPort(pageState),
        _checkboxSoTabletLand(pageState),
        Expanded(
          child: Container(),
          flex: 2,
        ),
      ],
    ),
  );
}

Widget _checkboxSoPhonePort(dynamic pageState) {
  bool _enabled = calc.CostsFunc.existAnyOperationSystem();
  _enabled = _enabled && calc.Costs.dtPhone.used;
  return CheckboxListTile(
    title: Text(calc.Costs.soPhonePort.name),
    value: calc.Costs.soPhonePort.used,
    onChanged: _enabled
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.soPhonePort.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.stay_current_portrait),
  );
}

Widget _checkboxSoPhoneLand(dynamic pageState) {
  bool _enabled = calc.CostsFunc.existAnyOperationSystem();
  _enabled = _enabled && calc.Costs.dtPhone.used;
  return CheckboxListTile(
    title: Text(calc.Costs.soPhoneLand.name),
    value: calc.Costs.soPhoneLand.used,
    onChanged: _enabled
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.soPhoneLand.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.stay_current_landscape),
  );
}

Widget _checkboxSoTabletPort(dynamic pageState) {
  bool _enabled = calc.CostsFunc.existAnyOperationSystem();
  _enabled = _enabled && calc.Costs.dtTablet.used;
  return CheckboxListTile(
    title: Text(calc.Costs.soTabletPort.name),
    value: calc.Costs.soTabletPort.used,
    onChanged: _enabled ? (bool value) {
      pageState.setState(() {
        if (calc.CostsFunc.existAnyOperationSystem()) {
          calc.Costs.soTabletPort.used = value;
        } else {
          print('RA: Need to choose one or two operation system');
          //TODO: Show SnackBar
        }
      });
    } : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.tablet_android),
  );
}

Widget _checkboxSoTabletLand(dynamic pageState) {
  bool _enabled = calc.CostsFunc.existAnyOperationSystem();
  _enabled = _enabled && calc.Costs.dtTablet.used;
  return CheckboxListTile(
    title: Text(calc.Costs.soTabletLand.name),
    value: calc.Costs.soTabletLand.used,
    onChanged: _enabled ? (bool value) {
      pageState.setState(() {
        if (calc.CostsFunc.existAnyOperationSystem()) {
          calc.Costs.soTabletLand.used = value;
        } else {
          print('RA: Need to choose one or two operation system');
          //TODO: Show SnackBar
        }
      });
    } : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.tablet),
  );
}
