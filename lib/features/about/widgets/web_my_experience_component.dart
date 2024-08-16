import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ross_portfolio/features/about/data/experience_data.dart';
import 'package:ross_portfolio/features/about/widgets/web_experience_info_component.dart';

class WebMyExperienceComponent extends StatelessWidget {
  const WebMyExperienceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('MY EXPERIENCE',
          style: GoogleFonts.oswald(
            fontSize: 40,
            color: Colors.white,
          ),),
        const SizedBox(width: 50),
        ...experienceList.map((experience) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: WebExperienceInfoComponent(experience: experience),
          );
        })
      ],
    );
  }
}
