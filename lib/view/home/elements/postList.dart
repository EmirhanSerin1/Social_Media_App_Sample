import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/core/components/posts/posts.dart';

Widget buildpagelist(BuildContext context) {
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
            "assets/image/profil_pictures/profil_picture.jpeg",
            "Monica Marin",
            context,
            "Such a beautiful picture",
            "assets/image/post_image/post1.jpg",
            "850",
            "32",
          ),
        ),
        Expanded(
          flex: 1,
          child: posts(
            "assets/image/profil_pictures/profil_picture2.jpeg",
            "Paula Selling",
            context,
            "Look at this cool tree",
            "assets/image/post_image/post2.jpg",
            "1.8k",
            "85",
          ),
        ),
        Expanded(
          flex: 1,
          child: posts(
            "assets/image/profil_pictures/profil_picture3.jpeg",
            "Natalia Cold",
            context,
            "I like this lake",
            "assets/image/post_image/post3.jpg",
            "1.3k",
            "62",
          ),
        ),
      ],
    ), // create user post
  );
}
