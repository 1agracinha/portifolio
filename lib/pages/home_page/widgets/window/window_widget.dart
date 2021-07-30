import 'package:flutter/material.dart';
import 'package:port/pages/home_page/widgets/window/header_widget.dart';

class WindowWidget extends StatefulWidget {
  const WindowWidget({
    Key? key,
  }) : super(key: key);

  @override
  _WindowWidgetState createState() => _WindowWidgetState();
}

class _WindowWidgetState extends State<WindowWidget> {
  Offset position = Offset(465.0, 13.0);
  bool isDragging = false;
  bool isVisible = true;
  bool isMaximized = false;
  @override
  Widget build(BuildContext context) {
    print("ISMAX: $isMaximized");
    return Positioned(
      left: position.dx,
      top: position.dy,
      child: Draggable(
        child: Visibility(
          visible: !isDragging && isVisible,
          child: Card(
            elevation: 0,
            color: Colors.transparent,
            child: caixaGradiente(
                widget: Text(""),
                width: isMaximized
                    ? MediaQuery.of(context).size.width * 0.8
                    : MediaQuery.of(context).size.height * 0.7,
                height: isMaximized
                    ? MediaQuery.of(context).size.width * 0.4
                    : MediaQuery.of(context).size.height * 0.6),
          ),
        ),
        onDragStarted: () {
          isDragging = true;
        },
        feedback: Card(
          elevation: 0,
          color: Colors.transparent,
          child: caixaGradiente(
              widget: Text(""),
              width: isMaximized
                  ? MediaQuery.of(context).size.width * 0.8
                  : MediaQuery.of(context).size.height * 0.7,
              height: isMaximized
                  ? MediaQuery.of(context).size.width * 0.7
                  : MediaQuery.of(context).size.height * 0.6),
        ),
        onDragEnd: (details) {
          setState(() {
            isDragging = false;
            position = details.offset;
          });
          print(details.offset);
        },
      ),
    );
  }

  Widget caixaGradiente({
    required Widget widget,
    required double width,
    required double height,
  }) {
    Color cor1 = Colors.white;
    Color cor2 = Colors.grey;
    return Container(
      child: Container(
        child: Column(
          children: [
            cabecalho(
                text: "teste",
                onClose: () {
                  setState(() {
                    isVisible = false;
                  });
                },
                onExpand: () {
                  setState(() {
                    isMaximized = !isMaximized;
                    position = isMaximized
                        ? Offset(145.0, -20.0)
                        : Offset(465.0, 13.0);
                  });
                },
                onMinimize: () {})
          ],
        ),
      ),
      width: width,
      height: height,
      margin: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 0.5),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              cor2.withOpacity(0.1),
              cor1.withOpacity(0.2),
              cor1.withOpacity(0.3),
              cor2.withOpacity(0.1),
            ],
          )),
    );
  }
}
