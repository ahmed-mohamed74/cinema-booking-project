import 'package:flutter/material.dart';

Widget Card1(String name) {
  return Column(
    children: [
      InkWell(
        onTap: () {}, // Image tapped
        splashColor: Colors.white10, // Splash color over image
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset("assets/images/Smile.jpg"),
          ),
        )
    ],
  );
}
