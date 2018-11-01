import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';
import 'package:share/share.dart';


dynamic _pageState;
calc.CalcResult _currentResult;

Widget tabRs(dynamic pageState, BuildContext context) {
  _pageState = pageState;

  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Результат'.toUpperCase(),
                style: TextStyle(color: Colors.amber),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.0,
              ),
              _commentResult(),
              SizedBox(
                height: 10.0,
              ),
              _outlineButtonRun(),
              Expanded(
                child: Container(),
                flex: 1,
              ),
              _tableResult(),
              Expanded(
                child: Container(),
                flex: 1,
              ),
              _controlResult(context),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _commentResult() {
  return Text(
    'На основании введенных данных, можно расчитать ориентировочные время и стоимость разработки мобильного приложения',
    textAlign: TextAlign.center,
  );
}

Widget _outlineButtonRun() {
  return OutlineButton(
    child: new Text('Рассчитать'.toUpperCase()),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
    textColor: Colors.amber,
    onPressed: () {
      _pageState.setState(() {
        _currentResult = calc.CostsCalc.calculate();
      });
    },
  );
}

Widget _tableResult() {
  if (_currentResult == null) {
    return Container(
      height: 0.0,
    );
  }
  if (_currentResult.time == null) {
    return Container(
      height: 0.0,
    );
  }
  if (_currentResult.time == '') {
    return Container(
      height: 0.0,
    );
  }
  return Center(
    child: Column(
      children: <Widget>[
        _textTitle('Время разработки:'),
        _textValue('${_currentResult.time} час.'),
        SizedBox(
          height: 20.0,
        ),
        _textTitle('Стоимость разработки:'),
        _textValue('${_currentResult.sum} руб.'),
      ],
    ),
  );
}

Widget _controlResult(BuildContext context) {
  if (_currentResult == null) {
    return Container(
      height: 0.0,
    );
  }
  if (_currentResult.time == null) {
    return Container(
      height: 0.0,
    );
  }
  if (_currentResult.time == '') {
    return Container(
      height: 0.0,
    );
  }
  return Row(
    children: <Widget>[
      Expanded(
        child: Container(),
        flex: 1,
      ),
      _outlineButtonClear(),
      SizedBox(
        width: 10.0,
      ),
      _outlineButtonSendEmail(context),
      Expanded(
        child: Container(),
        flex: 1,
      ),
    ],
  );
}

Widget _outlineButtonClear() {
  return OutlineButton(
    child: new Text('Сбросить'.toUpperCase()),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
    textColor: Colors.amber,
    onPressed: () {
      _pageState.setState(() {
        _currentResult = new calc.CalcResult();
      });
    },
  );
}

Widget _outlineButtonSendEmail(BuildContext context) {
  return OutlineButton(
    child: new Text('Отправить'.toUpperCase()),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
    textColor: Colors.amber,
    onPressed: () {
      _pageState.setState(() {
        Share.share(calc.CostsPost.write()); // TODO: Делимся текстом сразу
//        Navigator.of(context).pushNamed('/confirm');  // TODO: Переходим на подтверждение создания файла HTML
      });
    },
  );
}

Widget _textTitle(String s) {
  return Text(
    s.toUpperCase(),
    textAlign: TextAlign.center,
    style: TextStyle(
//      color: Colors.amber,
//      fontSize: 12.0,
        ),
  );
}

Widget _textValue(String s) {
  return Text(
//    s.toUpperCase(),
    s,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.amber,
      fontSize: 34.0,
    ),
  );
}

