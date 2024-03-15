import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NavigationService {
  final GlobalKey<NavigatorState> key;

  NavigationService(this.key);

  Future<T?>? to<T extends Object>(String route) {
    return key.currentState?.pushNamed<T>(route);
  }

  void back() {
    return key.currentState?.pop();
  }
}
