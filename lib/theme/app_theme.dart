import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromRGBO(88, 163, 255, 100);
  static const Color white = Colors.white;

  static const Color primaryColorOpacity = Color.fromRGBO(225, 239, 255, 100);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      scaffoldBackgroundColor: white,
      appBarTheme: const AppBarTheme(color: white, elevation: 0.3),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: Colors.red)));
}
