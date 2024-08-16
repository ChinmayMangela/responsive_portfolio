import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/about/models/experience.dart';

class MobileExperienceInfoComponent extends StatelessWidget {
  const MobileExperienceInfoComponent({
    super.key,
    required this.experience,
  });

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          experience.position,
          style: textTheme.headlineSmall!.copyWith(
            color: colorScheme.primary,
          ),
        ),
        const SizedBox(height: 10),
        if(experience.companyName != null)
          Text(
            experience.companyName!,
            style: textTheme.bodyLarge!.copyWith(
              color: colorScheme.primaryContainer,
            ),
          ),
        
        Text(
          experience.duration,
          style: textTheme.bodyLarge!.copyWith(
            color: colorScheme.secondary,
          ),
        ),
        const SizedBox(height: 20),

        Text(
          experience.description,
          style: textTheme.bodyLarge!.copyWith(
            color: colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
