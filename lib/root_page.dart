import 'package:connectionary/ui/page/home_page.dart';
import 'package:connectionary/ui/page/user_list_page.dart';
import 'package:connectionary/ui/widgets/menu_view/hamburger_menu.dart';
import 'package:connectionary/ui/widgets/menu_view/navigation_bar_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pageTypeProvider = StateProvider<PageType>((ref) => PageType.home);

enum PageType { home, userList, add, group, notification }

class RootPage extends ConsumerWidget {
  RootPage({Key? key}) : super(key: key);

  final List<Widget> _pageList = <Widget>[
    const HomePage(),
    const UserListPage(),
    const UserListPage(),
    const UserListPage(),
    const UserListPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageType = ref.watch(pageTypeProvider);
    return Scaffold(
      drawer: const HamburgerMenu(),
      body: _pageList[pageType.index],
      bottomNavigationBar: const NavigationBarBottom(),
    );
  }
}
