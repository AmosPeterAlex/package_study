import 'package:flutter/material.dart';
import 'package:package_study/src/core/app/responsive/view.dart';
import 'package:package_study/src/pages/login/responsive/desktop.dart';
import 'package:package_study/src/pages/login/responsive/tab.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: LoginTab(), tablet: LoginTab(), desktop: LoginDesktop());
  }
}
