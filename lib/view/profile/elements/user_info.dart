import 'package:flutter/material.dart';

buildInfoofUser(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey.shade300,
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(color: Colors.grey.shade300),
          ),
        ],
      ),
    );
  }