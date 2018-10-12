import 'package:flutter/material.dart';

class Dialog {

  static void showDialogWindow(BuildContext context, String value) {
    if (value.isEmpty) return;

    AlertDialog dialog = new AlertDialog(
      content: new Text(value),
      actions: <Widget>[
        _outlineButtonClose(context),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => dialog,
    );
  }
}

Widget _outlineButtonClose(BuildContext context) {
  return FlatButton(
    child: new Text('Закрыть'.toUpperCase()),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
    textColor: Colors.amber,
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
