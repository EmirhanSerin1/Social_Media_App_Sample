import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/view/profile/profile.dart';

Widget buildProfilPicture(String profilImagePath, BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(64),
            image: DecorationImage(image: AssetImage(profilImagePath), fit: BoxFit.cover),
          ),
        ),
      ));
}
