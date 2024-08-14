import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ross_portfolio/features/about/widgets/my_capabilities_description.dart';
import 'package:ross_portfolio/features/about/widgets/my_capability_cards.dart';

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
            style: GoogleFonts.oswald(
              fontSize: 40,
              color: Theme.of(context).colorScheme.primary,
            ),
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


