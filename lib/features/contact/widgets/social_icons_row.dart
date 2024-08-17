import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ross_portfolio/shared/widgets/social_button.dart';

class SocialIconsRow extends StatelessWidget {
  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialButton(
          icon: FontAwesomeIcons.linkedin,
          onPressed: () {},
        ),
        SocialButton(
          icon: FontAwesomeIcons.github,
          onPressed: () {},
        ),
        SocialButton(
          icon: FontAwesomeIcons.twitter,
          onPressed: () {},
        ),
        SocialButton(
          icon: FontAwesomeIcons.instagram,
          onPressed: () {},
        ),
      ],
    );
  }
}
