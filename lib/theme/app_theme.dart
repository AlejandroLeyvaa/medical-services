import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;
  static const Color primaryColorOpacity = Color.fromRGBO(255, 239, 255, 100);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: Colors.red)));
}
