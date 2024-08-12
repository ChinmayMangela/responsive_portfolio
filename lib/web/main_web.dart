import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/home/presentation/web_home_page.dart';
import 'package:ross_portfolio/shared/widgets/web_app_bar.dart';

class MainWeb extends StatelessWidget {
  const MainWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: webAppBar(context),
      body: ListView(
        children: const [
          WebHomePage(),
        ],
      )
    );
  }
}
