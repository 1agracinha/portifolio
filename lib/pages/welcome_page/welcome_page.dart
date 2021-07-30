import 'package:flutter/material.dart';
import 'package:port/shared/widgets/background_widget.dart';
import 'package:port/pages/welcome_page/widgets/login_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(loginWidget());
  }
}
