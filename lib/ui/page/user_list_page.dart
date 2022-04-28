import 'package:connectionary/configs/app_theme.dart';
import 'package:flutter/material.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ユーザリスト'),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: Container(
          height: 500,
          width: 500,
          color: AppTheme.subPrimaryColor,
          child: const Center(child: Text('hello')),
        )
    );
  }
}
