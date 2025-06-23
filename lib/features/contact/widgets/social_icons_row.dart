import 'package:flutter/material.dart';

import '../../../core/shared/widgets/social_buttons.dart';

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
