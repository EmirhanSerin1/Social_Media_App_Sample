import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/core/components/posts/userName/userName.dart';
import 'package:flutter_social_media_app_sample_simple/core/constant/icon/favorite_more_icon.dart';

import 'pictures/profil_picture_build.dart';

Widget posts(String userPicture, String userNames, BuildContext context, String thinks, String postImagePath, String likesNumber, String commentsNumber) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            buildProfilPicture(userPicture, context),
            userName(userNames),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 10),
            Text(thinks),
          ],
        ),
        SizedBox(height: 5),
        Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: AssetImage(postImagePath), fit: BoxFit.cover),
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Text(
              "$likesNumber Likes ",
              style: TextStyle(color: Colors.white.withOpacity(0.8)),
            ),
            Text(
              "- $commentsNumber Comments",
              style: TextStyle(color: Colors.white.withOpacity(0.8)),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            likesIcon(Icons.favorite),
            SizedBox(width: 10),
            likesIcon(Icons.message_outlined),
          ],
        ),
        Divider(),
      ],
    ),
  );
}
