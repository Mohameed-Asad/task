import 'package:flutter/material.dart';

class AppThemeManager {
  static const Color primaryColor = Color(0xFF2A7AD0);
  static const Color secColor = Color(0xFF03751C);
  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: "Poppins",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white),
      titleMedium: TextStyle(
          fontFamily: "Poppins",
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.white),
      bodyMedium: TextStyle(
          fontFamily: "Poppins",
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF010B2E)),
      bodySmall: TextStyle(
          fontFamily: "Poppins",
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: secColor),
      displayMedium: TextStyle(
          fontFamily: "Poppins",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white),
    ),
  );
}
