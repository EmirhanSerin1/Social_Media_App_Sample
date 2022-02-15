import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/core/components/posts/pictures/profil_picture_build.dart';
import 'package:flutter_social_media_app_sample_simple/core/constant/icon/iconButton.dart';



class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({ Key? key }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
    actions: [
      buildSearchButtononAppBar(Icons.search, context),
      buildMessageButtononAppBar(Icons.message, context),
      buildProfilPicture("assets/image/profil_pictures/profil_picture.jpeg", context),
    ],
  );

  
}


}