import 'package:flutter/material.dart';

Widget facebookIcon(double iconHeight, double iconWidth) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        image: DecorationImage(image: AssetImage("assets/icon/facebook_image.jpeg"), fit: BoxFit.contain),
      ),
      height: iconHeight,
      width: iconWidth,
    ),
  );
}
