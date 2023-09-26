import 'package:flutter/material.dart';
import 'package:ford_ranger/screens/home.dart';
import 'package:ford_ranger/screens/ranger_assist.dart';
import 'package:ford_ranger/screens/user_config.dart';
import 'package:ionicons/ionicons.dart';

import 'better_job.dart';

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
      children: [Home(), BetterJob(), RangerAssist(), UserConfig()],
    );
  }

  Widget getFooter() {
    List<IconData> icons = [
      Ionicons.home,
      Ionicons.map,
      Ionicons.build,
      Ionicons.list_outline
    ];

    List<BottomNavigationBarItem> items = List.generate(icons.length, (index) {
      return BottomNavigationBarItem(
        icon: CircleAvatar(
          radius: 35,
          backgroundColor: pageIndex == index ? Color(0xFF003478) : Color(0xFF343434),
          child: Icon(icons[index], color: Colors.white, size: 30),
        ),
        label: '',
      );
    });

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
