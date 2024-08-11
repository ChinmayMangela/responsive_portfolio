import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/home/widgets/my_intro.dart';
import 'package:ross_portfolio/features/home/widgets/profile_picture.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(14.0),
      child: ListView(
        children: [
          MyIntro(),
          SizedBox(height: 20),
          ProfilePicture(),
        ],
      ),
    );
  }
}
