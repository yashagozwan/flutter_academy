import 'package:injectable/injectable.dart';
import 'dart:developer' as dev;

@lazySingleton
class Logger {
  void d(dynamic value, {String name = ''}) {
    dev.log(value.toString(), name: name);
  }
}
