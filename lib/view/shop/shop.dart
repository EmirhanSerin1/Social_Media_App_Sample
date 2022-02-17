import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/model/user_info.dart';
import 'package:provider/provider.dart';

import 'elements/build_thing_to_sell.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    List profilPicture = Provider.of<UserInfo>(context).profilPicture;
    List thingToSell = Provider.of<UserInfo>(context).shop;
    List name = Provider.of<UserInfo>(context).userName;
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Market Place",
                style: TextStyle(fontSize: 20),
              ),
            ),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
        ),
        buildThingToSell(
            context, thingToSell[0], profilPicture[5], name[5], "Phone", "300"),
        buildThingToSell(
            context, thingToSell[1], profilPicture[7], name[7], "Tablet", "400"),
        buildThingToSell(
            context, thingToSell[2], profilPicture[6], name[6], "Laptop", "1000"),
      ],
    );
  }

}