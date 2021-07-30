import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:port/pages/home_page/home_page.dart';

Widget loginWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      loginBorderImageIconWidget(loginImageIconWidget()),
      loginButtonWidget(
        text: "Entrar",
        onPressed: () =>
            Get.to(() => HomePage(), transition: Transition.rightToLeft),
      )
    ],
  );
}

Widget loginButtonWidget({required text, required Function() onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(
      "Entrar",
      style: TextStyle(color: Colors.black),
    ),
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 40),
      primary: Colors.white,
    ),
  );
}

Widget loginImageIconWidget() {
  return Image.network(
    "https://arita.com.br/wp-content/uploads/2020/08/pessoa-expansiva-principais-caracteristicas-desta-personalidade.jpg",
    scale: 5,
    fit: BoxFit.fitHeight,
  );
}

Widget loginBorderImageIconWidget(Widget widget) {
  return Container(
    child: widget,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(bottom: 10),
    height: 100,
    width: 100,
    decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white)),
  );
}
