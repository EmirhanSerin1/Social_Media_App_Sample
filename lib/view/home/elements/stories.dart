import 'package:flutter/material.dart';

Widget buildStory() {
  return Container(
    height: 120,
    width: double.infinity,
    child: ListView(
      padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
      scrollDirection: Axis.horizontal,
      children: [
        storyList("assets/image/stories/story1.jpeg", "assets/image/profil_pictures/profil_picture.jpeg"),
        SizedBox(width: 20),
        storyList("assets/image/stories/story2.jpeg", "assets/image/profil_pictures/profil_picture2.jpeg"),
        SizedBox(width: 20),
        storyList("assets/image/stories/story3.jpeg", "assets/image/profil_pictures/profil_picture3.jpeg"),
        SizedBox(width: 20),
        storyList("assets/image/stories/story4.jpg", "assets/image/profil_pictures/profil_picture4.jpg"),
        SizedBox(width: 20),
        storyList("assets/image/stories/story5.jpg", "assets/image/profil_pictures/profil_picture5.jpg"),
        SizedBox(width: 20),
        storyList("assets/image/stories/story6.jpg", "assets/image/profil_pictures/profil_picture6.jpg"),
        SizedBox(width: 20),
      ],
    ),
  );
}

Widget storyList(String imagePath, String profilPhotoPath) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(image: AssetImage(profilPhotoPath), fit: BoxFit.cover),
              ),
            ),
          )
        ],
      ),
    ],
  );
}
