import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
import 'package:ross_portfolio/features/about/models/experience.dart';

class WebExperienceInfoComponent extends StatelessWidget {
  const WebExperienceInfoComponent({
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                experience.position,
                style: textTheme.headlineSmall.copyWith(
                ),
              ),
            ),
            Expanded(
              child: Text(
                experience.duration,
                style: textTheme.bodyLarge.copyWith(
                ),
              ),
            ),
          ],
        ),
        if(experience.companyName != null)
          Text(
            experience.companyName!,
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
