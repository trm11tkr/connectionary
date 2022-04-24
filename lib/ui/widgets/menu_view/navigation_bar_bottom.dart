import 'package:connectionary/configs/app_theme.dart';
import 'package:flutter/material.dart';

class NavigationBarBottom extends StatelessWidget {
  const NavigationBarBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppTheme.theme.primaryColor,
      type: BottomNavigationBarType.fixed,
      items: myBottomNavBarItems(),
      iconSize: 35,
    );
  }
}

List<BottomNavigationBarItem> myBottomNavBarItems() {
  return const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'ホーム',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.face),
      label: 'メンバー',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.add_circle_outline,
        size: 50,
      ),
      label: '',

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.group),
      label: 'グループ',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: 'お知らせ',
    ),
  ];
}
