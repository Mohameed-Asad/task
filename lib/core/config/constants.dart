import 'package:flutter/material.dart';
import 'package:task_1/main.dart';

class Constants {
  static var mediaQuery = MediaQuery.of(navigatorKey.currentState!.context).size;
  static var theme = Theme.of(navigatorKey.currentState!.context);
}