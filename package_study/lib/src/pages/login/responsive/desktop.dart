import 'package:flutter/material.dart';
import 'package:package_study/src/core/constants/k_colors.dart';

class LoginDesktop extends StatelessWidget {
  const LoginDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("hi"),),
      body: Row(
        children: [
          Container(
            color: KColors.loginBlue,
            width: 600,
          ),
          Center(
            child: Column(
              children: [Text("hi")],
            ),
          )
        ],
      ),
    );
  }
}
