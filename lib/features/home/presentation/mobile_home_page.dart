import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/home/widgets/my_intro.dart';
import 'package:ross_portfolio/features/home/widgets/profile_picture.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const MyIntro(),
        const SizedBox(height: 20),
        ProfilePicture(
          width: MediaQuery.of(context).size.width * 0.9,
        ),
      ],
    );
  }
}
