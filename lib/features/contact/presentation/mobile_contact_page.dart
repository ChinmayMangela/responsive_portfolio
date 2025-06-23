import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
import 'package:ross_portfolio/features/contact/widgets/my_form.dart';
import 'package:ross_portfolio/features/contact/widgets/social_icons_row.dart';

class MobileContactPage extends StatelessWidget {
  const MobileContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'LET\'S CONNECT',
          style: TextThemes(context).headlineLarge.copyWith(
            fontWeight: TextWeights.weight900
          )
        ),
        const SizedBox(height: 20),
        const SocialIconsRow(),
        const SizedBox(height: 20),
        const MyForm(),
      ],
    );
  }
}
