import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
import 'package:ross_portfolio/features/about/widgets/my_capabilities_description.dart';
import 'package:ross_portfolio/features/about/widgets/my_capability_cards.dart';

class MobileSkillShowcaseComponent extends StatelessWidget {
  const MobileSkillShowcaseComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'MY CAPABILITIES',
          style: TextThemes(context).headlineLarge.copyWith(
            fontWeight: TextWeights.weight900
          )
        ),
        const SizedBox(height: 30),
        const MyCapabilitiesDescription(),
        const SizedBox(height: 20),
        const MyCapabilityCards(),
      ],
    );
  }
}
