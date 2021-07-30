import 'package:flutter/material.dart';

Widget taskBarIconWidget(IconData iconData, Function() onPressed) {
  return Padding(
    padding: EdgeInsets.only(right: 5, left: 5, top: 5, bottom: 20),
    child: Card(
      color: Colors.transparent,
      elevation: 0,
      child: IconButton(
        icon: Icon(
          iconData,
          size: 40,
          color: Colors.white,
        ),
        onPressed: onPressed,
      ),
    ),
  );
}
