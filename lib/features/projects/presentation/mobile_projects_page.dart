import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ross_portfolio/features/projects/data/project_data.dart';
import 'package:ross_portfolio/features/projects/widgets/mobile_project_card.dart';

class MobileProjectsPage extends StatelessWidget {
  const MobileProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'FEATURED PROJECTS',
          style: GoogleFonts.oswald(
            fontSize: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        const SizedBox(height: 20),
        Text(
          'Here are some of the selected projects that showcase my passion for front-end development',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        const SizedBox(height: 60),
        MobileProjectCard(project: projects[0]),
        MobileProjectCard(project: projects[1]),
        MobileProjectCard(project: projects[2]),
      ],
    );
  }
}
