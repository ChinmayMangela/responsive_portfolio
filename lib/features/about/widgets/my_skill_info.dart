import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
import 'package:ross_portfolio/features/about/widgets/buttons_row.dart';

class MySkillInfo extends StatelessWidget {
  const MySkillInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextThemes(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'I am a front-end developer based in Sydney. Has Mechanical Engineering background. ',
          style:textTheme.headlineSmall.copyWith(
            fontWeight: TextWeights.weight700
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'I am a front-end developer based in Sydney looking for exciting opportunities. Has Mechanical Engineering background. Likes to focus on accessibility when developing. Passionate and curious about solving problems. Currently, I’m exploring Reactjs, Webflow and a bit of Designing. While I am not programming, I enjoy playing football, photography and playing Valorant. Learning more to improve skill',
          style: textTheme.bodyLarge.copyWith(
             color: grey
          ),
        ),
        const SizedBox(height: 30),
        const ButtonsRow(),
      ],
    );
  }
}
