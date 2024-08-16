import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ross_portfolio/features/about/widgets/my_capability_cards.dart';
import 'package:ross_portfolio/features/about/widgets/my_capabilities_description.dart';
import 'package:ross_portfolio/features/about/widgets/my_skill_info.dart';
import 'package:ross_portfolio/features/about/widgets/picture_container.dart';
import 'package:ross_portfolio/features/about/widgets/web_my_experience_component.dart';
import 'package:ross_portfolio/features/about/widgets/web_skill_showcase_component.dart';
import 'package:ross_portfolio/shared/widgets/custom_divider.dart';

class WebAboutPage extends StatelessWidget {
  const WebAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'ABOUT ME',
                style: GoogleFonts.oswald(
                  fontSize: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
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
