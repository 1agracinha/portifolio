import 'package:flutter/material.dart';

class FileWidget extends StatelessWidget {
  final Widget widget;
  final Function onClick, onRightClick;
  final String directoryName;
  final Widget? contentDialog;
  FileWidget(
      {required this.directoryName,
      required this.onClick,
      required this.onRightClick,
      required this.widget,
      this.contentDialog});
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: () {
            onClick();
            if (contentDialog != null) {
              showDialog(
                context: context,
                builder: (_) => new AlertDialog(
                  content: contentDialog,
                ),
              );
            }
          },
          onSecondaryTap: onRightClick(),
          child: Column(
            children: [
              Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(right: 10, left: 10, top: 10),
                  child: widget),
              Text(directoryName)
            ],
          )),
    );
  }
}
