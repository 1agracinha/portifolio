import 'package:flutter/material.dart';
import 'package:port/pages/home_page/widgets/task_bar_icon_widget.dart';
import 'package:port/pages/home_page/widgets/task_bar_widget.dart';
import 'package:port/pages/home_page/widgets/window/window_widget.dart';
import 'package:port/shared/widgets/background_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // icones = [
    //   TaskBarIconButton(
    //       icon: Icons.folder,
    //       onPressed: () {
    //         addWindow();
    //         print("ADIICONOU");
    //       }),
    //   TaskBarIconButton(icon: Icons.article, onPressed: () {}),
    //   TaskBarIconButton(icon: Icons.account_circle, onPressed: () {}),
    //   TaskBarIconButton(icon: Icons.email, onPressed: () {}),
    //   TaskBarIconButton(icon: Icons.people, onPressed: () {})
    // ];
  }

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      Stack(
        children: [
          ...openWindows,
          TextButton(
              onPressed: () {
                setState(() {
                  openWindows.add(WindowWidget());
                });
              },
              child: Text("teste")),
          taskBarWidget(context, widgets: [
            taskBarIconWidget(Icons.article, () {
              addWindow(WindowWidget());
            }),
            taskBarIconWidget(Icons.account_circle, () {
              addWindow(WindowWidget());
            }),
            taskBarIconWidget(Icons.email, () {
              addWindow(WindowWidget());
            }),
            taskBarIconWidget(Icons.people, () {
              addWindow(WindowWidget());
            }),
          ]),
        ],
      ),
    );
  }

  void addWindow(WindowWidget widget) {
    setState(() {
      openWindows.add(widget);
    });
  }
}

List<WindowWidget> openWindows = [];

class TaskBarIconButton {
  final IconData icon;
  final Function onPressed;
  TaskBarIconButton({required this.icon, required this.onPressed});
}
