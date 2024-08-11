import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/home/widgets/my_intro.dart';
import 'package:ross_portfolio/features/home/widgets/profile_picture.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: MyIntro(),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 2,
              child: ProfilePicture(),
            ),
          ],
        ),
      ),
    );
  }
}
