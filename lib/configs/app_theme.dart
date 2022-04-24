import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const primaryColor = Color.fromRGBO(52, 52, 23, 1);
  static const secondaryColor = Color.fromRGBO(52, 52, 23, 1);
  static const fontColor = Color.fromRGBO(52, 52, 23, 1);

  static ThemeData get theme => ThemeData(
    primaryColor: primaryColor,

    scaffoldBackgroundColor: const Color.fromARGB(255, 249, 248, 245),
  );
}