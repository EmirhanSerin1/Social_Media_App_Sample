import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/view/message_box/message_box.dart';

buildMessageButtononAppBar(IconData icon, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MessageBox()));
      },
      child: Container(
        width: 40,
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(64),
        ),
        child: Icon(icon),
      ),
    ),
  );
}



buildSearchButtononAppBar(IconData icon, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {},
      child: Container(
        width: 40,
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(64),
        ),
        child: Icon(icon),
      ),
    ),
  );
}
