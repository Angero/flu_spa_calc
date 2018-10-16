import 'dart:io';

import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';

import 'dialog.dart' as dlg;
import 'storage.dart';

class ConfirmPage extends StatefulWidget {
  @override
  _ConfirmPageState createState() => new _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  String _promoCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Результат'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              _textFieldPromoCode(),
              SizedBox(
                height: 20.0,
              ),
              _outlineButtonConfirm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldPromoCode() {
    return TextField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        WhitelistingTextInputFormatter(RegExp('[0-9]')),
      ],
      autofocus: true,
      decoration: new InputDecoration(
        labelText: 'Промо-код',
        hintText: 'Введите промо-код',
      ),
      obscureText: true,
      onChanged: (String value) {
        setState(() {
          _promoCode = value;
        });
      },
    );
  }

  Widget _outlineButtonConfirm() {
    return OutlineButton(
      child: new Text('Отправить'.toUpperCase()),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
      textColor: Colors.amber,
      onPressed: () {
        _sendResult();
      },
    );
  }

  _sendResult() async {
    if (_promoCode == '120461') {
      String html = calc.CostsHtml.write();
      // TODO: Могу сохранять файл но пока нет средств им делится
      File file = await CalcStorage().writeCalc(html); 
      print(file.path);
      try {
        await Share.share(html);
        setState(() {
          _promoCode = '';
        });
      } catch (e) {
        print('RA: ${e.toString()}');
        dlg.Dialog.showDialogWindow(context, 'Не удалось отправить.');
      }
    } else {
      dlg.Dialog.showDialogWindow(context,
          'Для отправки результатов расчета стоимости разработки мобильного приложения, необходимо ввести корректный промо-код.');
    }
  }

}
