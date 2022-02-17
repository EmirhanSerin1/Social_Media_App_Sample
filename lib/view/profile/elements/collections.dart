import 'package:flutter/material.dart';

Widget buildCollection(List collection) {
  return Container(
    height: 130,
    width: double.infinity,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        getSizedBox(),
        buildOneFriend(collection[0]),
        getSizedBox(),
        buildOneFriend(collection[1]),
        getSizedBox(),
        buildOneFriend(collection[2]),
        getSizedBox(),
        buildOneFriend(collection[3]),
        getSizedBox(),
        buildOneFriend(collection[4]),
        getSizedBox(),
      ],
    ),
  );
}

SizedBox getSizedBox() => SizedBox(width: 15);

buildOneFriend(String imagePath) {
  return Container(
    height: 100,
    width: 90,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      color: Colors.white,
    ),
  );
}
