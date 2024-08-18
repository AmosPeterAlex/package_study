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
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 10,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Center(
                          child: Text("c wijc i \n wihbciwcn\n uheweouo")),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Text("dbihcb  ihbwiwn bdiwbni"),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
