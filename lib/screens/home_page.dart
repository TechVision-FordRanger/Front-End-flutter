import 'package:flutter/material.dart';
import 'package:ford_ranger/screens/home.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [Home()],
    );
  }

  Widget getFooter() {
    List<BottomNavigationBarItem> items = const [
      BottomNavigationBarItem(
        icon: Icon(Ionicons.home),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Ionicons.map),
        label: '',
      ),
      BottomNavigationBarItem(
          icon: Icon(Ionicons.build), label: ''),
      BottomNavigationBarItem(
          icon: Icon(Ionicons.list_outline), label: ''),
    ];

    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.white,
      items: items,
      type: BottomNavigationBarType.fixed,
      currentIndex: pageIndex,
      onTap: (index) {
        setState(() {
          pageIndex = index;
        });
      },
    );
  }
}
