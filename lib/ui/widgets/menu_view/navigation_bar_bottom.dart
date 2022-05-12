import 'package:connectionary/configs/app_theme.dart';
import 'package:connectionary/ui/page/root_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationBarBottom extends ConsumerWidget {
  const NavigationBarBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageType = ref.watch(pageTypeProvider);
    return BottomNavigationBar(
      selectedItemColor: AppTheme.subTheme.primaryColor,
      selectedIconTheme: const IconThemeData(
        size: 50
      ),
      type: BottomNavigationBarType.fixed,
      iconSize: 35,
      currentIndex: pageType.index,
      onTap: (index) {
        ref.watch(pageTypeProvider.state).state = PageType.values[index];
      },
      items: myBottomNavBarItems(),
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
