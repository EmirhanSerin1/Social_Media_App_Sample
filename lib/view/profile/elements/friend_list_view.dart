import 'package:flutter/material.dart';

Widget buildFriend() {
  return Container(
    height: 110,
    width: double.infinity,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(width: 15),
        buildOneFriend("assets/image/profil_pictures/profil_picture2.jpeg", "Paula Selling"),
        SizedBox(width: 15),
        buildOneFriend("assets/image/profil_pictures/profil_picture3.jpeg", "Natalia Cold"),
        SizedBox(width: 15),
        buildOneFriend("assets/image/profil_pictures/profil_picture4.jpg", "Blake Fisher"),
        SizedBox(width: 15),
        buildOneFriend("assets/image/profil_pictures/profil_picture5.jpg", "Ryan Stun"),
        SizedBox(width: 15),
        buildOneFriend("assets/image/profil_pictures/profil_picture6.jpg", "Angelina Miller"),
        SizedBox(width: 15),
      ],
    ),
  );
}

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
