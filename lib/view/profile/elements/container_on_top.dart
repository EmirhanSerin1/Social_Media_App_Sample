import 'package:flutter/material.dart';

buildContainerTop(List image) {
  return Card(
    elevation: 4,
    shadowColor: Colors.blue,
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          _buildPp(image),
          Text(
            "Monica Marin",
            style: TextStyle(fontSize: 22),
          ),
          Text("Traveller | Lover | Developer"),
        ],
      ),
    ),
  );
}

_buildPp(List image) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(64),
            image: DecorationImage(image: AssetImage(image[0]), fit: BoxFit.cover),
          ),
        ),
      ),
    ],
  );
}
