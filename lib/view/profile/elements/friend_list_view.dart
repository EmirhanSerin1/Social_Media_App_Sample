import 'package:flutter/material.dart';

Widget buildFriend(List profilPicture,name) {
  return Container(
    height: 110,
    width: double.infinity,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        getSizedBox(),
        buildOneFriend(profilPicture[2], name[1]),
        getSizedBox(),
        buildOneFriend(profilPicture[1], name[2]),
        getSizedBox(),
        buildOneFriend(profilPicture[3], name[3]),
        getSizedBox(),
        buildOneFriend(profilPicture[4], name[4]),
        getSizedBox(),
        buildOneFriend(profilPicture[5], name[5]),
        getSizedBox(),
      ],
    ),
  );
}

SizedBox getSizedBox() => SizedBox(width: 15);

buildOneFriend(String imagePath, String name) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(64), image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover), color: Colors.white),
      ),
      SizedBox(height: 10),
      Text(name, style: TextStyle(fontSize: 12)),
    ],
  );
}
