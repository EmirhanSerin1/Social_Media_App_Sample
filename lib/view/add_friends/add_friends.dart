import 'package:flutter/material.dart';

class AddFriends extends StatefulWidget {
  @override
  _AddFriendsState createState() => _AddFriendsState();
}

class _AddFriendsState extends State<AddFriends> {
  Color color = Colors.blue.shade900;
  Color color2 = Colors.blue.shade900;
  Color color3 = Colors.blue.shade900;
  Color color4 = Colors.blue.shade900;
  Color color5 = Colors.blue.shade900;
  int value = 1;
  int value2 = 1;
  int value3 = 1;
  int value4 = 1;
  int value5 = 1;
  String invite = "Invite";
  String invite2 = "Invite";
  String invite3 = "Invite";
  String invite4 = "Invite";
  String invite5 = "Invite";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "People you may know",
            style: TextStyle(fontSize: 16),
          ),
        ),
        /* buildIFriends("assets/image/profil_pictures/profil_picture2.jpeg", "Paula Selling"),
        buildIFriends("assets/image/profil_pictures/profil_picture3.jpeg", "Natalia Cold"),
        buildIFriends("assets/image/profil_pictures/profil_picture4.jpg", "Blake Fisher"),
        buildIFriends("assets/image/profil_pictures/profil_picture5.jpg", "Ryan Stun"),
        buildIFriends("assets/image/profil_pictures/profil_picture6.jpg", "Angelina Miller"),*/
        Card(
          margin: EdgeInsets.all(4),
          elevation: 4,
          shadowColor: Colors.blue,
          color: Colors.grey.shade900,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/image/profil_pictures/profil_picture2.jpeg"),
                      ),
                      SizedBox(width: 10),
                      Text("Paula Selling"),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            value % 2 == 0 ? color = Colors.blue.shade900 : color = Colors.black;
                            value % 2 == 0 ? invite = "Invite" : invite = "Invited";
                            value++;
                          });
                        },
                        child: Container(
                          width: 90,
                          height: 25,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                              child: Text(
                            invite,
                            style: TextStyle(fontSize: 14),
                          )),
                        ),
                      ),
                      SizedBox(width: 10)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.all(4),
          elevation: 4,
          shadowColor: Colors.blue,
          color: Colors.grey.shade900,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/image/profil_pictures/profil_picture3.jpeg"),
                      ),
                      SizedBox(width: 10),
                      Text("Natalia Cold"),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            value2 % 2 == 0 ? color2 = Colors.blue.shade900 : color2 = Colors.black;
                            value2 % 2 == 0 ? invite2 = "Invite" : invite2 = "Invited";

                            value2++;
                          });
                        },
                        child: Container(
                          width: 90,
                          height: 25,
                          decoration: BoxDecoration(
                            color: color2,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                              child: Text(
                            invite2,
                            style: TextStyle(fontSize: 14),
                          )),
                        ),
                      ),
                      SizedBox(width: 10)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.all(4),
          elevation: 4,
          shadowColor: Colors.blue,
          color: Colors.grey.shade900,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/image/profil_pictures/profil_picture4.jpg"),
                      ),
                      SizedBox(width: 10),
                      Text("Blake Fisher"),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            value3 % 2 == 0 ? color3 = Colors.blue.shade900 : color3 = Colors.black;
                            value3 % 2 == 0 ? invite3 = "Invite" : invite3 = "Invited";

                            value3++;
                          });
                        },
                        child: Container(
                          width: 90,
                          height: 25,
                          decoration: BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                              child: Text(
                            invite3,
                            style: TextStyle(fontSize: 14),
                          )),
                        ),
                      ),
                      SizedBox(width: 10)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.all(4),
          elevation: 4,
          shadowColor: Colors.blue,
          color: Colors.grey.shade900,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                        //backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/image/profil_pictures/profil_picture5.jpg"),
                      ),
                      SizedBox(width: 10),
                      Text("Ryan Stun"),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            value4 % 2 == 0 ? color4 = Colors.blue.shade900 : color4 = Colors.black;
                            value4 % 2 == 0 ? invite4 = "Invite" : invite4 = "Invited";

                            value4++;
                          });
                        },
                        child: Container(
                          width: 90,
                          height: 25,
                          decoration: BoxDecoration(
                            color: color4,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                              child: Text(
                            invite4,
                            style: TextStyle(fontSize: 14),
                          )),
                        ),
                      ),
                      SizedBox(width: 10)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.all(4),
          elevation: 4,
          shadowColor: Colors.blue,
          color: Colors.grey.shade900,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/image/profil_pictures/profil_picture6.jpg"),
                      ),
                      SizedBox(width: 10),
                      Text("Angelina Miller"),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            value5 % 2 == 0 ? color5 = Colors.blue.shade900 : color5 = Colors.black;
                            value5 % 2 == 0 ? invite5 = "Invite" : invite5 = "Invited";

                            value5++;
                          });
                        },
                        child: Container(
                          width: 90,
                          height: 25,
                          decoration: BoxDecoration(
                            color: color5,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                              child: Text(
                            invite5,
                            style: TextStyle(fontSize: 14),
                          )),
                        ),
                      ),
                      SizedBox(width: 10)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  /*buildIFriends(String imagePath, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  //backgroundColor: Colors.white,
                  backgroundImage: AssetImage(imagePath),
                ),
                SizedBox(width: 10),
                Text(name),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      value % 2 == 0 ? color = Colors.blue.shade900 : color = Colors.black;
                      value++;
                    });
                  },
                  child: Container(
                    width: 90,
                    height: 25,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                        child: Text(
                      "Invite",
                      style: TextStyle(fontSize: 14),
                    )),
                  ),
                ),
                SizedBox(width: 10)
              ],
            )
          ],
        ),
      ),
    );
  }*/
}
