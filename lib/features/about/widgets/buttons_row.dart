import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/about/widgets/resume_button.dart';
import 'package:ross_portfolio/shared/widgets/social_buttons.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ResumeButton(onPressed: () {}),
          const SizedBox(width: 10),
          linkedInButton(),
          const SizedBox(width: 10),
          githubButton(),
        ],
      ),
    );
  }
}
