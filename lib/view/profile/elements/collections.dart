import 'package:flutter/material.dart';

Widget buildCollection() {
  return Container(
    height: 130,
    width: double.infinity,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(width: 15),
        buildOneFriend("assets/image/collections/collection1.jpg"),
        SizedBox(width: 15),
        buildOneFriend("assets/image/collections/collection2.jpg"),
        SizedBox(width: 15),
        buildOneFriend("assets/image/collections/collection3.jpg"),
        SizedBox(width: 15),
        buildOneFriend("assets/image/collections/collection4.jpg"),
        SizedBox(width: 15),
        buildOneFriend("assets/image/collections/collection5.jpg"),
        SizedBox(width: 15),
      ],
    ),
  );
}

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
