import 'package:flutter/material.dart';
import 'package:ross_portfolio/shared/widgets/social_buttons.dart';

class SocialIconsRow extends StatelessWidget {
  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        linkedInButton(),
        githubButton(),
        twitterButton(),
        instagramButton(),
      ],
    );
  }
}
