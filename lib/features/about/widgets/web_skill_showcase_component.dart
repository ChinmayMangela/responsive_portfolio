import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/about/widgets/my_capabilities_description.dart';
import 'package:ross_portfolio/features/about/widgets/my_capability_cards.dart';

import '../../../core/theme/dimen.dart';

class WebSkillShowcaseComponent extends StatelessWidget {
  const WebSkillShowcaseComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            'MY CAPABILITIES',
            style: TextThemes(context).displayMedium.copyWith(
              fontWeight: TextWeights.weight900
            )
          ),
        ),
        const SizedBox(width: 50),
        const Expanded(
          child: Column(
            children: [
              MyCapabilitiesDescription(),
              SizedBox(height: 40),
              MyCapabilityCards(),
            ],
          ),
        ),
      ],
    );
  }
}


