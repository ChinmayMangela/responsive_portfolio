import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
import 'package:ross_portfolio/features/about/widgets/mobile_my_experience_component.dart';
import 'package:ross_portfolio/features/about/widgets/mobile_skill_showcase_component.dart';
import 'package:ross_portfolio/features/about/widgets/my_skill_info.dart';
import 'package:ross_portfolio/features/about/widgets/picture_container.dart';

import '../../../core/shared/widgets/custom_divider.dart';

class MobileAboutPage extends StatelessWidget {
  const MobileAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ABOUT ME',
          style: TextThemes(context).headlineLarge.copyWith(
            fontWeight: TextWeights.weight900
          )
        ),
        const SizedBox(height: 20),
        const MySkillInfo(),
        const SizedBox(height: 60),
        const PictureContainer(),
        const SizedBox(height: 60),
        const MobileSkillShowcaseComponent(),
        const CustomDivider(topPadding: 40, bottomPadding: 40),
        const MobileMyExperienceComponent(),
      ],
    );
  }
}
