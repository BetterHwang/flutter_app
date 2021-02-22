import 'package:flutter/material.dart';
import 'package:flutter_app/view/first_page/first_page.dart';
import 'package:flutter_app/view/message_page/message_page.dart';

class MainTabView extends StatefulWidget {
  MainTabView();

  @override
  _MainTabViewState createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> with SingleTickerProviderStateMixin {
  int _selectIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Using Bottom Navigation Bar"),
      //   backgroundColor: Theme.of(context).accentColor,
      // ),
      body: pages[_selectIndex],
      // Set the bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        // set the tab bar as the child of bottom navigation bar
        items: bottomNavItems,
        currentIndex: _selectIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _changePage(index);
        },
      ),
    );
  }

  final pages = [FirstPage(), MessagePage(), FirstPage(), FirstPage()];
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      label: "首页",
      activeIcon: Icon(Icons.home_outlined),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      label: "消息",
      activeIcon: Icon(Icons.message_outlined),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.amber,
      icon: Icon(Icons.shopping_cart),
      label: "购物车",
      activeIcon: Icon(Icons.shopping_cart_outlined),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.person),
      label: "个人中心",
      activeIcon: Icon(Icons.person_outlined),
    ),
  ];

  _changePage(int index) {
    if (index != _selectIndex) {
      setState(() {
        _selectIndex = index;
      });
    }
  }
}