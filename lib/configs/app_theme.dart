import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static get mainPrimaryColor => mainCustomSwatch.shade600;
  static get mainPrimaryColorLite => mainCustomSwatch.shade300;
  static get mainPrimaryColorDark => mainCustomSwatch.shade900;

  static const MaterialColor mainCustomSwatch = MaterialColor(
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

  static ThemeData get mainTheme => ThemeData(
        primarySwatch: mainCustomSwatch,
        primaryColor: mainPrimaryColor,
        primaryColorLight: mainPrimaryColorLite,
        primaryColorDark: mainPrimaryColorDark,
      );

  static get subPrimaryColor => subCustomSwatch.shade600;
  static get subPrimaryColorLite => subCustomSwatch.shade300;
  static get subPrimaryColorDark => subCustomSwatch.shade900;

  static const MaterialColor subCustomSwatch = MaterialColor(
    0xFFB65D85,
    <int, Color>{
      50: Color(0xFFF0F8F8),
      100: Color(0xFFDAEDED),
      200: Color(0xFFC1E2E1),
      300: Color(0xFFA8D6D5),
      400: Color(0xFF95CDCC),
      500: Color(0xFF82C4C3),
      600: Color(0xFF7ABEBD),
      700: Color(0xFF6FB6B5),
      800: Color(0xFF65AFAE),
      900: Color(0xFF52A2A1),
    },
  );

  static ThemeData get subTheme => ThemeData(
    primarySwatch: subCustomSwatch,
    primaryColor: subPrimaryColor,
    primaryColorLight: subPrimaryColorLite,
    primaryColorDark: subPrimaryColorDark,
  );
}