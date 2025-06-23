import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
import 'package:ross_portfolio/features/about/models/experience.dart';

class MobileExperienceInfoComponent extends StatelessWidget {
  const MobileExperienceInfoComponent({
    super.key,
    required this.experience,
  });

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    final textTheme = TextThemes(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          experience.position,
          style: textTheme.headlineSmall.copyWith(
          ),
        ),
        const SizedBox(height: 10),
        if(experience.companyName != null)
          Text(
            experience.companyName!,
            style: textTheme.bodyLarge.copyWith(
            ),
          ),
        
        Text(
          experience.duration,
          style: textTheme.bodyLarge.copyWith(
          ),
        ),
        const SizedBox(height: 20),

        Text(
          experience.description,
          style: textTheme.bodyLarge.copyWith(
          ),
        ),
      ],
    );
  }
}
