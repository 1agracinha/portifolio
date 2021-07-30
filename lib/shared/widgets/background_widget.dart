import 'package:flutter/material.dart';

Widget backgroundWidget(Widget widget) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          // Colors.blue,
          // Colors.purple,
          Colors.blue,
          Colors.white
        ],
      ),
    ),
    child: widget,
  );
}
