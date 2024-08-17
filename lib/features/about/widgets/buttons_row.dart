import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ross_portfolio/features/about/widgets/resume_button.dart';
import 'package:ross_portfolio/shared/widgets/social_button.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ResumeButton(onPressed: () {}),
        const SizedBox(width: 10),
        SocialButton(icon: FontAwesomeIcons.linkedin, onPressed: () {},),
        const SizedBox(width: 10),
        SocialButton(icon: FontAwesomeIcons.github, onPressed: () {},)
      ],
    );
  }
}
