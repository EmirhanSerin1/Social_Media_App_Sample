import 'package:flutter/material.dart';

Widget buildStory(List profilPicture, story) {
  return Container(
    height: 120,
    width: double.infinity,
    child: ListView(
      padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
      scrollDirection: Axis.horizontal,
      children: [
        storyList(story[0], profilPicture[0]),
        getSizedBox(),
        storyList(story[1], profilPicture[1]),
        getSizedBox(),
        storyList(story[2], profilPicture[2]),
        getSizedBox(),
        storyList(story[3], profilPicture[3]),
        getSizedBox(),
        storyList(story[4], profilPicture[4]),
        getSizedBox(),
        storyList(story[5], profilPicture[5]),
        getSizedBox(),
      ],
    ),
  );
}

SizedBox getSizedBox() => SizedBox(width: 20);

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
