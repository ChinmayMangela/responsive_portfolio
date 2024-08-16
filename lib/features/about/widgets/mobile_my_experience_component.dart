import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ross_portfolio/features/about/data/experience_data.dart';
import 'package:ross_portfolio/features/about/widgets/mobile_experience_info_component.dart';

class MobileMyExperienceComponent extends StatelessWidget {
  const MobileMyExperienceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('MY EXPERIENCE',
        style: GoogleFonts.oswald(
          fontSize: 40,
          color: Colors.white,
        ),),
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
