import 'package:flutter/material.dart';

Container buildAddFriendButton() {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: Center(
        child: GestureDetector(
          child: Text("Add Friend"),
        ),
      ),
    );
  }