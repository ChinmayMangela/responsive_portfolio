import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/about/presentation/web_about_page.dart';
import 'package:ross_portfolio/features/home/presentation/web_home_page.dart';
import 'package:ross_portfolio/features/projects/presentation/web_projects_page.dart';
import 'package:ross_portfolio/shared/widgets/custom_divider.dart';
import 'package:ross_portfolio/shared/widgets/web_app_bar.dart';

class MainWeb extends StatelessWidget {
  const MainWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: webAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: ListView(
          children: const [
            WebHomePage(),
            CustomDivider(
              topPadding: 100,
              bottomPadding: 100,
            ),
            WebProjectsPage(),
            CustomDivider(
              topPadding: 20,
              bottomPadding: 100,
            ),
            WebAboutPage(),
          ],
        ),
      )
    );
  }
}
