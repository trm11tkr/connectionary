import 'package:flutter/material.dart';

class HamburgerMenu extends StatelessWidget {
  const HamburgerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width * 0.5,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 60,
              child: DrawerHeader(
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
                margin: EdgeInsets.zero,
                child: const Center(
                  child: Text('メニュー'),
                ),
              ),
            ),
            ListTile(
              title: const Text("設定"),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
