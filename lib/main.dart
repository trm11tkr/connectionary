import 'package:connectionary/root_page.dart';
import 'package:connectionary/ui/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:connectionary/configs/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
          primarySwatch: AppTheme.mainCustomSwatch,
      ),
      home: RootPage(),
    );
  }
}