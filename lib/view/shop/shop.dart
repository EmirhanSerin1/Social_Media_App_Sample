import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/core/components/posts/pictures/profil_picture_build.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
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
            context, "assets/image/shop/thing_to_sell.jpg", "assets/image/profil_pictures/profil_picture6.jpg", "Angelina Miller", "Phone", "300"),
        buildThingToSell(
            context, "assets/image/shop/thing_to_sell3.jpg", "assets/image/profil_pictures/profil_picture8.jpg", "Tanya Weed ", "Tablet", "400"),
        buildThingToSell(
            context, "assets/image/shop/thing_to_sell2.jpg", "assets/image/profil_pictures/profil_picture7.jpg", "Christine Rose", "Laptop", "1000"),
      ],
    );
  }

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
}
