import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/model/add_friend.dart';
import 'package:flutter_social_media_app_sample_simple/model/user_info.dart';
import 'package:provider/provider.dart';

class AddFriends extends StatefulWidget {
  @override
  _AddFriendsState createState() => _AddFriendsState();
}

class _AddFriendsState extends State<AddFriends> {
  final StreamController streamController = StreamController();

  @override
  void dispose() {
    super.dispose();
    streamController.close();
  }

  @override
  Widget build(BuildContext context) {
    List name = Provider.of<UserInfo>(context).userName;
    List image = Provider.of<UserInfo>(context).profilPicture;
    final invited = Provider.of<AddFriend>(context, listen: false).invite;
    final colorsss = Provider.of<AddFriend>(context, listen: false).color;
    final list = Provider.of<AddFriend>(context, listen: false);
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "People you may know",
            style: TextStyle(fontSize: 16),
          ),
        ),
        buildCard(name[1], image[1], 0, invited, colorsss, list),
        buildCard(name[2], image[2], 1, invited, colorsss, list),
        buildCard(name[3], image[3], 2, invited, colorsss, list),
        buildCard(name[4], image[4], 3, invited, colorsss, list),
        buildCard(name[5], image[5], 4, invited, colorsss, list),
      ],
    );
  }

  Card buildCard(String name, profilPictures, int number, List invited, colorss,
      AddFriend list) {
    return Card(
      margin: EdgeInsets.all(4),
      elevation: 4,
      shadowColor: Colors.blue,
      color: Colors.grey.shade900,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage(profilPictures),
                  ),
                  SizedBox(width: 10),
                  Text(name),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() => list.changeInvite(number));
                    },
                    child: Container(
                      width: 90,
                      height: 25,
                      decoration: BoxDecoration(
                        color: colorss[number],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                          child: Text(
                        invited[number],
                        style: TextStyle(fontSize: 14),
                      )),
                    ),
                  ),
                  SizedBox(width: 10)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
