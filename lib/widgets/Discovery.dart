import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Discovery',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn.pixabay.com/photo/2017/06/20/22/14/man-2425121_1280.jpg"),
          radius: 24,
        ),
      ],
    );
  }
}
