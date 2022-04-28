import 'package:connectionary/ui/widgets/menu_view/hamburger_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final community = [
      _communityBox(Colors.greenAccent, 'お気に入り'),
      _communityBox(Colors.red, '友達'),
      _communityBox(Colors.blue, 'サークル'),
      _communityBox(Colors.cyan, '地元'),
      _communityBox(Colors.greenAccent, '家族'),
      _communityBox(Colors.cyan, '会社'),
      _communityBox(Colors.red, '教授'),
      _communityBox(Colors.grey, 'バイト'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ホームページ'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: const HamburgerMenu(),
      body: Column(
        children: [
          Center(
            child: Container(
              width: double.infinity,
              height: 120,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  exampleCircle(Colors.red, 100, 100),
                  const Text(
                    '鈴木一郎',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Icon(Icons.share),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 8, right: 8),
            margin: const EdgeInsets.only(left: 8, right: 8),
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '友達',
                ),
                exampleCircle(Colors.blue, 40, 40),
                exampleCircle(Colors.orange, 40, 40),
                exampleCircle(Colors.white, 40, 40),
                exampleCircle(Colors.green, 40, 40),
                const Icon(Icons.start),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.purple[100],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Expanded(
              child: GridView.count(
            padding: const EdgeInsets.all(8),
            crossAxisCount: 2,
            children: community,
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'add User',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget exampleCircle(Color color, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _communityBox(Color color, String text) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, top: 5.0),
        child: Text(text),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
