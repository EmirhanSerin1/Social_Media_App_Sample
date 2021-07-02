import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/view/add_friends/add_friends.dart';
import 'package:flutter_social_media_app_sample_simple/view/home/home_page.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final tabs = [
    HomePage(),
    AddFriends(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.grey.shade600), label: "HOME", backgroundColor: Colors.black54),
        BottomNavigationBarItem(icon: Icon(Icons.video_collection, color: Colors.grey.shade600), label: "VIDEOS", backgroundColor: Colors.black54),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.grey.shade600), label: "SHOP", backgroundColor: Colors.black54),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1_sharp, color: Colors.grey.shade600), label: "ADD FRIEND", backgroundColor: Colors.black54),
        BottomNavigationBarItem(icon: Icon(Icons.menu_book, color: Colors.grey.shade600), label: "BOOK", backgroundColor: Colors.black54),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.shifting,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      /// Navigator.push(context, MaterialPageRoute(builder: ()=>))
      _selectedIndex = index;

      /// Navigator.push(context, MaterialPageRoute(builder: ()=>))
    });
  }
}
