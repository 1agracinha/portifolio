import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:port/pages/home_page/home_page.dart';
import 'package:port/pages/welcome_page/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Port',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: myAppPage(),
    );
  }
}

Widget myAppPage() {
  return Scaffold(
    //TODO: trocar para welcome
    body: HomePage(),
  );
}
