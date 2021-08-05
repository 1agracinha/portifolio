import 'dart:math';

import 'package:flutter/material.dart';
import 'package:port/pages/home_page/widgets/task_bar_icon_widget.dart';
import 'package:port/pages/home_page/widgets/task_bar_widget.dart';
import 'package:port/pages/home_page/widgets/window/file_widget.dart';
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
          taskBarWidget(context, widgets: [
            taskBarIconWidget(Icons.article, () {
              addWindow(
                inicializaWindowWidget(
                  textoCabecalho: "Projetos",
                  conteudo: Wrap(
                    children: [
                      FileWidget(
                        widget: Image.asset(
                          "assets/icons/pasta.png",
                          fit: BoxFit.fitWidth,
                        ),
                        directoryName: "pasta 1",
                        onClick: () {},
                        onRightClick: () {},
                      ),
                      FileWidget(
                        widget: Image.asset(
                          "assets/icons/pasta.png",
                          fit: BoxFit.fitWidth,
                        ),
                        directoryName: "pasta 2",
                        onClick: () {},
                        onRightClick: () {},
                      ),
                      FileWidget(
                        widget: Image.asset(
                          "assets/icons/pasta.png",
                          fit: BoxFit.fitWidth,
                        ),
                        directoryName: "pasta 3",
                        onClick: () {},
                        onRightClick: () {},
                      ),
                      FileWidget(
                        widget: Image.network(
                          "https://arita.com.br/wp-content/uploads/2020/08/pessoa-expansiva-principais-caracteristicas-desta-personalidade.jpg",
                          fit: BoxFit.fitWidth,
                        ),
                        directoryName: "image.jpg",
                        contentDialog: Image.network(
                          "https://arita.com.br/wp-content/uploads/2020/08/pessoa-expansiva-principais-caracteristicas-desta-personalidade.jpg",
                          fit: BoxFit.fitWidth,
                        ),
                        onClick: () {},
                        onRightClick: () {},
                      ),
                      FileWidget(
                        widget: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/4/42/Pdf-2127829.png",
                          fit: BoxFit.fitWidth,
                        ),
                        directoryName: "info.pdf",
                        onClick: () {},
                        onRightClick: () {},
                      ),
                    ],
                  ),
                ),
              );
            }),
            // taskBarIconWidget(Icons.account_circle, () {
            //   addWindow(inicializaWindowWidget(textoCabecalho: "Sobre"));
            // }),
            // taskBarIconWidget(Icons.email, () {
            //   addWindow(inicializaWindowWidget(textoCabecalho: "Contato"));
            // }),
            // taskBarIconWidget(Icons.people, () {
            //   addWindow(inicializaWindowWidget(textoCabecalho: "Redes"));
            // }),
          ]),
        ],
      ),
    );
  }

  WindowWidget inicializaWindowWidget(
      {required String textoCabecalho, required Widget conteudo}) {
    final random = Random.secure().nextInt(1000);
    return WindowWidget(
      key: ValueKey<int>(random),
      textoCabecalho: textoCabecalho,
      onTap: () {
        final index = openWindows.indexOf(openWindows.firstWhere(
          (janela) => janela.key == ValueKey<int>(random),
        ));
        final newWindow = openWindows[index];

        setState(() {
          openWindows.removeAt(index);
          openWindows.add(newWindow);
        });
      },
      conteudo: conteudo,
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
