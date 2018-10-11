import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget tabAa(dynamic pageState) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ListView(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text('Авторизация'.toUpperCase(),
            style: TextStyle(color: Colors.amber), textAlign: TextAlign.center),
        SizedBox(
          height: 20.0,
        ),
        _checkboxAaEmail(pageState),
        _checkboxAaPhone(pageState),
        _checkboxAaGoogle(pageState),
        _checkboxAaFacebook(pageState),
        _checkboxAaInstagram(pageState),
        SizedBox(
          height: 40.0,
        ),
      ],
    ),
  );
}

Widget _checkboxAaEmail(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.aaEmail.name),
    value: calc.Costs.aaEmail.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.aaEmail.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.email),
  );
}

Widget _checkboxAaPhone(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.aaPhone.name),
    value: calc.Costs.aaPhone.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.aaPhone.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.phone),
  );
}

Widget _checkboxAaGoogle(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.aaGoogle.name),
    value: calc.Costs.aaGoogle.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.aaGoogle.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(FontAwesomeIcons.google),
  );
}

Widget _checkboxAaFacebook(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.aaFacebook.name),
    value: calc.Costs.aaFacebook.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.aaFacebook.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(FontAwesomeIcons.facebook),
  );
}

Widget _checkboxAaInstagram(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.aaInstagram.name),
    value: calc.Costs.aaInstagram.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
            pageState.setState(() {
              calc.Costs.aaInstagram.used = value;
            });
          }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(FontAwesomeIcons.instagram),
  );
}
