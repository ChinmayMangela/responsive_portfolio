import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({
    super.key,
    required this.mobileScreen,
    required this.desktopScreen,
  });

  final Widget mobileScreen;
  final Widget desktopScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileScreen;
      } else {
        return desktopScreen;
      }
    });
  }
}
