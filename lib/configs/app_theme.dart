import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const MaterialColor customSwatch = MaterialColor(
    0xFFB65D85,
    <int, Color>{
      50: Color(0xFFF7EDF1),
      100: Color(0xFFEBD1DD),
      200: Color(0xFFEBD1DD),
      300: Color(0xFFD093AF),
      400: Color(0xFFC67C9E),
      500: Color(0xFFBC658D),
      600: Color(0xFFB65D85),
      700: Color(0xFFAD537A),
      800: Color(0xFFA54970),
      900: Color(0xFFA54970),
    },
  );

  static ThemeData get theme => ThemeData(
    primarySwatch: customSwatch,
  );
}