import 'package:flutter/material.dart';

class BorderRadiusMain extends StatelessWidget {
  final Widget child;
  const BorderRadiusMain({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: child,
    );
  }
}
