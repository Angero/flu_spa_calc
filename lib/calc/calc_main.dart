import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'calc_os.dart';
import 'calc_dt.dart';


class CalcMainPage extends StatefulWidget {
  @override
  _CalcMainPageState createState() => new _CalcMainPageState();
}

class _CalcMainPageState extends State<CalcMainPage> {

  List<Widget> widgets = new List<Widget>();

  @override
  void initState() {
    super.initState();
    widgets.add(osPage());
    widgets.add(dtPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Swiper(
        itemBuilder: (BuildContext context, int index){
          return widgets[index];
        },
        itemCount: widgets.length,
        pagination: SwiperPagination(),
        control: SwiperControl(),
      ),
    );
  }
}
