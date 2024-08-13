import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ross_portfolio/features/projects/data/project_data.dart';
import 'package:ross_portfolio/features/projects/widgets/web_project_card.dart';

class WebProjectsPage extends StatelessWidget {
  const WebProjectsPage({super.key});

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
        for(final project in projects)
          WebProjectCard(project: project),
        const SizedBox(height: 60),

      ],
    );
  }
}
