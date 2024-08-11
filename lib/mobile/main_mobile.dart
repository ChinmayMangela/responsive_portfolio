import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/home/presentation/mobile_home_page.dart';
import 'package:ross_portfolio/shared/widgets/mobile_app_bar.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mobileAppBar(context),
      body: MobileHomePage(),
    );
  }
}
