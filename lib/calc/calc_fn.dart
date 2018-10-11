import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget tabFn(dynamic pageState) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 0.0, right: 0.0),
    child: ListView(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Функции'.toUpperCase(),
          style: TextStyle(color: Colors.amber),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20.0,
        ),
        _checkboxFnCamera(pageState),
        SizedBox(
          height: 10.0,
        ),
        _checkboxFnGeo(pageState),
        SizedBox(
          height: 10.0,
        ),
        _checkboxFnNotice(pageState),
        SizedBox(
          height: 10.0,
        ),
        _checkboxFnChat(pageState),
        SizedBox(
          height: 10.0,
        ),
        _checkboxFnSms(pageState),
        SizedBox(
          height: 10.0,
        ),
        _checkboxFnPayment(pageState),
        SizedBox(
          height: 10.0,
        ),
        _checkboxFnLocale(pageState),
      ],
    ),
  );
}

Widget _checkboxFnCamera(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.fnCamera.name),
    subtitle: Text(calc.Costs.fnCamera.desc),
    value: calc.Costs.fnCamera.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
      pageState.setState(() {
        calc.Costs.fnCamera.used = value;
      });
    }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.photo_camera),
  );
}

Widget _checkboxFnGeo(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.fnGeo.name),
    subtitle: Text(calc.Costs.fnGeo.desc),
    value: calc.Costs.fnGeo.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
      pageState.setState(() {
        calc.Costs.fnGeo.used = value;
      });
    }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.place),
  );
}

Widget _checkboxFnNotice(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.fnNotice.name),
    subtitle: Text(calc.Costs.fnNotice.desc),
    value: calc.Costs.fnNotice.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
      pageState.setState(() {
        calc.Costs.fnNotice.used = value;
      });
    }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.notifications),
  );
}

Widget _checkboxFnChat(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.fnChat.name),
    subtitle: Text(calc.Costs.fnChat.desc),
    value: calc.Costs.fnChat.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
      pageState.setState(() {
        calc.Costs.fnChat.used = value;
      });
    }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.forum),
  );
}

Widget _checkboxFnSms(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.fnSms.name),
    subtitle: Text(calc.Costs.fnSms.desc),
    value: calc.Costs.fnSms.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
      pageState.setState(() {
        calc.Costs.fnSms.used = value;
      });
    }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.sms),
  );
}

Widget _checkboxFnPayment(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.fnPayment.name),
    subtitle: Text(calc.Costs.fnPayment.desc),
    value: calc.Costs.fnPayment.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
      pageState.setState(() {
        calc.Costs.fnPayment.used = value;
      });
    }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(Icons.account_balance_wallet),
  );
}


Widget _checkboxFnLocale(dynamic pageState) {
  return CheckboxListTile(
    title: Text(calc.Costs.fnLocale.name),
    subtitle: Text(calc.Costs.fnLocale.desc),
    value: calc.Costs.fnLocale.used,
    onChanged: calc.CostsFunc.existAnyOperationSystem()
        ? (bool value) {
      pageState.setState(() {
        calc.Costs.fnLocale.used = value;
      });
    }
        : null,
    controlAffinity: ListTileControlAffinity.leading,
    secondary: Icon(FontAwesomeIcons.globe),
  );
}
