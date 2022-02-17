import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/core/components/posts/posts.dart';

Widget buildPostList(BuildContext context, List profilPicture, name, postImage) {
  return Container(
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.all(8),
    width: double.infinity,
    height: 1250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(32),
      color: Colors.grey.shade900,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: posts(
            profilPicture[0],
            name[0],
            context,
            "Such a beautiful picture",
            postImage[0],
            "850",
            "32",
          ),
        ),
        Expanded(
          flex: 1,
          child: posts(
            profilPicture[1],
            name[1],
            context,
            "Look at this cool tree",
            postImage[1],
            "1.8k",
            "85",
          ),
        ),
        Expanded(
          flex: 1,
          child: posts(
            profilPicture[2],
            name[2],
            context,
            "I like this lake",
            postImage[2],
            "1.3k",
            "62",
          ),
        ),
      ],
    ), // create user post
  );
}
