import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/core/components/posts/pictures/profil_picture_build.dart';

Padding buildThingToSell(BuildContext context, String imagePath, String ppImagePAth, String name, String nameofThing, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        shadowColor: Colors.blue,
        child: Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade900,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  buildProfilPicture(ppImagePAth, context),
                  Text(
                    name,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 210,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Text(nameofThing),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Text("Price: $price USD"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

