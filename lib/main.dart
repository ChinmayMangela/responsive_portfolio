import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/app_theme.dart';
import 'package:ross_portfolio/mobile/main_mobile.dart';
import 'package:ross_portfolio/portfolio.dart';
import 'package:ross_portfolio/web/main_web.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const Portfolio(
        mobileScreen: MainMobile(),
        desktopScreen: MainWeb(),
      ),
    );
  }
}
