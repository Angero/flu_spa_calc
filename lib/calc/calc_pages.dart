import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'package:flutter/material.dart';

import 'calc_aa.dart';
import 'calc_ds.dart';
import 'calc_dt.dart';
import 'calc_os.dart';
import 'calc_pr.dart';
import 'calc_sc.dart';
import 'calc_so.dart';
import 'calc_sv.dart';
import 'calc_fn.dart';
import 'calc_pb.dart';
import 'calc_rs.dart';

import 'package:dots_indicator/dots_indicator.dart';


class CalcPagesPage extends StatefulWidget {
  @override
  _CalcPagesPageState createState() => new _CalcPagesPageState();
}

class _CalcPagesPageState extends State<CalcPagesPage> {

  int currentIndexPage = 9;
  PageController controller;

  @override
  void initState() {
    super.initState();
    calc.initCosts();
    calc.setCosts();
    calc.CostsCheck.initErrors();
    controller = PageController(initialPage: currentIndexPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Калькулятор'),
      ),
      body: Stack(
        alignment: FractionalOffset.bottomCenter,
        children: <Widget>[
          PageView(
            controller: controller,
            children: <Widget>[
              tabOs(this),
              tabDt(this),
              tabSo(this),
              tabSc(this),
              tabPr(this),
              tabDs(this),
              tabAa(this),
              tabSv(this),
              tabFn(this),
              tabPb(this),
              tabRs(this),
            ],
            onPageChanged: (int i) {
              setState(() {
                currentIndexPage = i;
              });
            },
          ),
          dots(),
        ],
      ),
    );
  }

  Widget dots() {
    return Container(
      child: Center(
        child: new DotsIndicator(
            numberOfDot: 11,
            position: currentIndexPage,
            dotSpacing: const EdgeInsets.all(3.0),
            dotActiveColor: Colors.amber,
        ),
      ),
      width: double.infinity,
      height: 30.0,
      color: Theme.of(context).primaryColor,
//      color: Colors.black26,
    );
  }

}
