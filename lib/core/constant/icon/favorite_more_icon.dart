import 'package:flutter/material.dart';

Widget likesIcon(IconData icon) {
  return Container(
    width: 32,
    height: 32,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.black54),
    child: Icon(
      icon,
      size: 22,
    ),
  );
}
