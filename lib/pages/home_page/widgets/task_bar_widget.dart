import 'package:flutter/material.dart';

Widget taskBarWidget(BuildContext context, {required List<Widget> widgets}) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      child: Row(
        children: [...widgets],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
    ),
  );
}
