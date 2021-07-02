import 'package:flutter/material.dart';

Container buildMoreButton() {
    return Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          border: Border.all(width: 1, color: Colors.white),
        ),
        child: IconButton(icon: Icon(Icons.more_vert), onPressed: () {}));
  }