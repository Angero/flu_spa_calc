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

class CalcTabsPage extends StatefulWidget { //todo: delete this file
  @override
  _CalcTabsPageState createState() => new _CalcTabsPageState();
}

class _CalcTabsPageState extends State<CalcTabsPage> {

  @override
  void initState() {
    super.initState();
    calc.initCosts();
    calc.setCosts();
    calc.CostsCheck.initErrors();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 11,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Калькулятор'.toUpperCase(),
              style: TextStyle(color: Colors.amber),
            ),
            bottom: TabBar(tabs: [
              Tab(
                text: '0',
              ),
              Tab(
                text: '1',
              ),
              Tab(
                text: '2',
              ),
              Tab(
                text: '3',
              ),
              Tab(
                text: '4',
              ),
              Tab(
                text: '5',
              ),
              Tab(
                text: '6',
              ),
              Tab(
                text: '7',
              ),
              Tab(
                text: '8',
              ),
              Tab(
                text: '9',
              ),
              Tab(
                text: 'R',
              ),
            ]),
          ),
          body: TabBarView(children: [
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
          ]),
        ));
  }
}
