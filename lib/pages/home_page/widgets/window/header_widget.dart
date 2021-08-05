import 'package:flutter/material.dart';

Widget cabecalho(
    {required String text,
    required Function() onMinimize,
    required Function() onExpand,
    required Function() onClose}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          text,
          style: TextStyle(color: Colors.grey[600]),
        ),
      ),
      Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: IconButton(
                icon: Icon(
                  Icons.remove,
                  color: Colors.grey[600],
                ),
                onPressed: onMinimize,
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: IconButton(
                icon: Icon(
                  Icons.personal_video,
                  color: Colors.grey[600],
                  size: 20,
                ),
                onPressed: onExpand,
              )),
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.cancel,
                  color: Colors.grey[600],
                  size: 20,
                ),
                onPressed: onClose,
              ))
        ],
      )
    ],
  );
}
