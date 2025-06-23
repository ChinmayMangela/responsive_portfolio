import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
import 'package:ross_portfolio/features/home/widgets/contact_me_button.dart';
import '../../../core/constants/string_constants.dart';
import '../../../core/shared/widgets/social_buttons.dart';

class MyIntro extends StatelessWidget {
  const MyIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextThemes(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'HI, I AM',
          style: textTheme.headlineMedium.copyWith(
            fontWeight: TextWeights.weight900
          )
        ),
        Text(
            '$name.',
            style: textTheme.displayMedium.copyWith(
                fontWeight: TextWeights.weight900
            )
        ),
        const SizedBox(height: 10),
        _buildDescription(context),
        const SizedBox(height: 20),
        Row(
          children: [
            const ContactMeButton(),
            linkedInButton(),
            githubButton(),
          ],
        )
      ],
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Text(
      'my description.....',
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: Colors.grey,
      ),
    );
  }
}
