import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
import 'package:ross_portfolio/features/about/data/experience_data.dart';
import 'package:ross_portfolio/features/about/widgets/mobile_experience_info_component.dart';

class MobileMyExperienceComponent extends StatelessWidget {
  const MobileMyExperienceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'MY EXPERIENCE',
          style: TextThemes(context).headlineLarge.copyWith(
            fontWeight: TextWeights.weight900
          )
        ),
        const SizedBox(height: 20),
        ...experienceList.map((experience) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: MobileExperienceInfoComponent(experience: experience),
          );
        })
      ],
    );
  }
}
