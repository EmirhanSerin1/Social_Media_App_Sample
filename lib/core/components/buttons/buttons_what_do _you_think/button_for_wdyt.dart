import 'package:flutter/material.dart';

Widget buttonWDYT(IconData icon, String text, Color color) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: color,
            ),
            Text(text, style: TextStyle()),
          ],
        ),
      ),
    ),
  );
}

Widget buttonWDYTwithSize(IconData icon, String text, Color color, double width) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Container(
      width: width,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 20),
            Icon(
              icon,
              color: color,
            ),
            SizedBox(width: 20),
            Text(text, style: TextStyle()),
          ],
        ),
      ),
    ),
  );
}
