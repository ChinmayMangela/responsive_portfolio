import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
import 'package:ross_portfolio/features/about/widgets/my_skill_info.dart';
import 'package:ross_portfolio/features/about/widgets/picture_container.dart';
import 'package:ross_portfolio/features/about/widgets/web_my_experience_component.dart';
import 'package:ross_portfolio/features/about/widgets/web_skill_showcase_component.dart';

import '../../../core/shared/widgets/custom_divider.dart';

class WebAboutPage extends StatelessWidget {
  const WebAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'ABOUT ME',
                  style: TextThemes(context).displayMedium.copyWith(
                      fontWeight: TextWeights.weight900
                  )
              ),
            ),
            const SizedBox(width: 50),
            const Expanded(child: MySkillInfo()),
          ],
        ),
        const SizedBox(height: 30),
        const SizedBox(height: 60),
        const PictureContainer(),
        const SizedBox(height: 60),
        const WebSkillShowcaseComponent(),
        const CustomDivider(topPadding: 40, bottomPadding: 40),
        const WebMyExperienceComponent(),
      ],
    );
  }
}
