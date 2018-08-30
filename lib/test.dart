import 'package:flu_estimate/calculation/calculation.dart' as calc;

main () {

  calc.initCosts();
  calc.setCosts();
  print('Native design description: ${calc.Costs.dsNative.desc}');

}