import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/core/components/posts/pictures/profil_picture_build.dart';
import 'package:flutter_social_media_app_sample_simple/core/constant/appBar/main_app_bar.dart';

class MessageBox extends StatefulWidget {
  MessageBox({Key? key}) : super(key: key);

  @override
  _MessageBoxState createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView(
        children: [
          buildMessage(context, "assets/image/profil_pictures/profil_picture6.jpg", "Angelina Miller"),
          buildMessage(context, "assets/image/profil_pictures/profil_picture7.jpg", "Christine Rose"),
          buildMessage(context, "assets/image/profil_pictures/profil_picture8.jpg", "Tanya Weed"),
        ],
      ),
    );
  }

  Card buildMessage(BuildContext context, String imagePath, String name) {
    return Card(
      elevation: 8,
      shadowColor: Colors.blue,
      color: Colors.grey.shade900,
      margin: EdgeInsets.all(12),
      child: Container(
        width: double.infinity,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                buildProfilPicture(imagePath, context),
                Text(name),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(Icons.arrow_right),
            )
          ],
        ),
      ),
    );
  }
}
