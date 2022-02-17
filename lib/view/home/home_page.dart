import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/model/user_info.dart';
import 'package:flutter_social_media_app_sample_simple/view/home/elements/what_do_think.dart';
import 'package:provider/provider.dart';

import 'elements/postList.dart';
import 'elements/stories.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List profilPicture = Provider.of<UserInfo>(context).profilPicture;
    List name = Provider.of<UserInfo>(context).userName;
    List postImage = Provider.of<UserInfo>(context).postPath;
    List story = Provider.of<UserInfo>(context).stories;

    return ListView(
      children: [
        Container(
          color: Colors.black54,
          child: Column(
            children: [
              Form(
                child: whatDoYouThink(context),
              ),
              buildStory(profilPicture, story),
              buildPostList(context, profilPicture, name, postImage),
            ],
          ),
        )
      ],
    );
  }
}
