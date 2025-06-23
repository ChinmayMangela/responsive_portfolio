import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/about/presentation/mobile_about_page.dart';
import 'package:ross_portfolio/features/contact/presentation/mobile_contact_page.dart';
import 'package:ross_portfolio/features/home/presentation/mobile_home_page.dart';
import 'package:ross_portfolio/features/projects/presentation/mobile_projects_page.dart';
import '../core/shared/widgets/custom_divider.dart';
import '../core/shared/widgets/mobile_app_bar.dart';
import '../core/shared/widgets/my_drawer.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mobileAppBar(context),
        drawer: const MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: const [
              MobileHomePage(),
              CustomDivider(
                topPadding: 60,
                bottomPadding: 60,
              ),
              MobileProjectsPage(),
              CustomDivider(
                topPadding: 0,
                bottomPadding: 60,
              ),
              MobileAboutPage(),
              CustomDivider(
                topPadding: 60,
                bottomPadding: 60,
              ),
              MobileContactPage(),
              SizedBox(height: 50),
            ],
          ),
        ));
  }
}
