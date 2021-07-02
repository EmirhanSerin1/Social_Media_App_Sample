import 'package:flutter/material.dart';

Container buildMessageButton() {
  return Container(
    width: 140,
    height: 40,
    decoration: BoxDecoration(
      color: Colors.blue.shade800,
      borderRadius: BorderRadius.circular(26),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.message),
        GestureDetector(
          child: Text("Message"),
        ),
      ],
    ),
  );
}
