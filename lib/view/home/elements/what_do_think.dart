import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/core/components/buttons/buttons_what_do%20_you_think/button_for_wdyt.dart';

/// what do you think part in container
Widget whatDoYouThink(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        )),
    width: MediaQuery.of(context).size.width,
    height: 110,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildProfilPicture(),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(labelText: "Write What Do You Think"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  image: DecorationImage(image: AssetImage("assets/icon/smile.png"), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buttonWDYTwithSize(Icons.photo_camera, "Photo", Colors.blue.shade800, 250),
            //buttonWDYT(Icons.video_call, "Video", Colors.pinkAccent.shade700),
            //buttonWDYT(Icons.music_note, "Music", Colors.blue.shade800),
          ],
        ),
      ],
    ),
  );
}

_buildProfilPicture() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/image/profil_pictures/monica_marin_pp.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}
