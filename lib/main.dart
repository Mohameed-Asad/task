import 'package:flutter/material.dart';
import 'package:task_1/core/config/app_theme_manager.dart';
import 'package:task_1/presention/home/home_screen.dart';


GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeManager.appTheme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      navigatorKey: navigatorKey,
    );
  }
}
