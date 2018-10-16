import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class CalcStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/calc.html');
  }

  Future<File> writeCalc(String calc) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString(calc);
  }
}
