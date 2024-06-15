import 'package:flutter/material.dart';

import '../../constants/k_device_size.dart';
import 'border_radius.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final bool hasBorderRadius;

  const Responsive(
      {Key? key,
      required this.mobile,
      required this.tablet,
      required this.desktop,
      this.hasBorderRadius = true})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < knMobileMaxScreenSize;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= knMobileMaxScreenSize &&
      MediaQuery.of(context).size.width <= knTabMaxScreenSize;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > knTabMaxScreenSize;

  static int gridCrossAxisCount(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > knTabMaxScreenSize) {
      return 3;
    } else if (size.width >= knMobileMaxScreenSize) {
      return 2;
    } else {
      return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > 992) {
        return hasBorderRadius ? BorderRadiusMain(child: desktop) : desktop;
      // return desktop;
    } else if (size.width >= 576) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
