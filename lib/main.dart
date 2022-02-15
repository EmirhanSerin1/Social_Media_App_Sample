
import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/core/constant/appBar/main_app_bar.dart';
import 'package:flutter_social_media_app_sample_simple/view/add_friends/add_friends.dart';
import 'package:flutter_social_media_app_sample_simple/view/book/book.dart';
import 'package:flutter_social_media_app_sample_simple/view/shop/shop.dart';

import 'view/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Facebook Ui Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final tabs = [
    HomePage(),
    Shop(),
    AddFriends(),
    Book(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.grey.shade600), label: "HOME", backgroundColor: Colors.black54),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.grey.shade600), label: "SHOP", backgroundColor: Colors.black54),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add_alt_1_sharp, color: Colors.grey.shade600), label: "ADD FRIEND", backgroundColor: Colors.black54),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book, color: Colors.grey.shade600), label: "BOOK", backgroundColor: Colors.black54),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
      ),
      body: tabs[_selectedIndex],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
