import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/about/data/experience_data.dart';
import 'package:ross_portfolio/features/about/widgets/web_experience_info_component.dart';

import '../../../core/theme/dimen.dart';

class WebMyExperienceComponent extends StatelessWidget {
  const WebMyExperienceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            'MY EXPERIENCE',
            style: TextThemes(context).displayMedium.copyWith(
                fontWeight: TextWeights.weight900
            )
          ),
        ),
        const SizedBox(width: 50),
        Expanded(
          child: Column(
            children: experienceList.map((experience) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: WebExperienceInfoComponent(experience: experience),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
