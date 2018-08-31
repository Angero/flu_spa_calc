import 'package:flutter/material.dart';
import 'package:flu_estimate/calculation/calculation.dart' as calc;
import 'calc_os.dart';
import 'calc_dt.dart';
import 'calc_so.dart';
import 'calc_sc.dart';


class CalcTabsPage extends StatefulWidget {
  @override
  _CalcTabsPageState createState() => new _CalcTabsPageState();
}

class _CalcTabsPageState extends State<CalcTabsPage> {

  @override
  void initState() {
    super.initState();
    calc.initCosts();
    calc.setCosts();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Calc SPA'),
            bottom: TabBar(tabs: [
              Tab(text: '1',),
              Tab(text: '2',),
              Tab(text: '3',),
              Tab(text: '4',),
              Tab(text: '5',),
            ]),
          ),
          body: TabBarView(children: [
            tabOs(this),
            tabDt(this),
            tabSo(this),
            tabSc(),
          ]),
        ));
  }

}

