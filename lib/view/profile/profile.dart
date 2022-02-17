import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/model/user_info.dart';
import 'package:provider/provider.dart';

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
    List profilPicture = Provider.of<UserInfo>(context).profilPicture;
    List post = Provider.of<UserInfo>(context).postPath;
    List collection = Provider.of<UserInfo>(context).collection;
    List name = Provider.of<UserInfo>(context).userName;

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
                post[0],
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: ListView(
              children: [
                buildContainerTop(profilPicture),
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
                buildCollection(collection),
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
                buildFriend(profilPicture, name),
              ],
            ),
          )
        ],
      ),
    );
  }
}
