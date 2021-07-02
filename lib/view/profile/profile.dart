import 'package:flutter/material.dart';

import 'elements/buttons/add_frineds_button.dart';
import 'elements/buttons/message_button.dart';
import 'elements/buttons/more_button.dart';
import 'elements/collections.dart';
import 'elements/container_on_top.dart';
import 'elements/friend_list_view.dart';
import 'elements/user_info.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        primary: true,
        slivers: [
          SliverAppBar(
            expandedHeight: 150,
            pinned: true,
            primary: true,
            backgroundColor: Colors.grey.shade900,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/post_image/post1.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: ListView(
              children: [
                buildContainerTop(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildMessageButton(),
                      buildAddFriendButton(),
                      buildMoreButton(),
                    ],
                  ),
                ),
                Divider(),
                buildInfoofUser(Icons.home, "Seatle"),
                buildInfoofUser(Icons.info, "MIT Computer Science"),
                buildInfoofUser(Icons.work, "Microsoft"),
                Divider(),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Collections",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                buildCollection(),
                Divider(),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Friends",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                buildFriend(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
