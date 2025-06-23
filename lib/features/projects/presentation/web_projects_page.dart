import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/string_constants.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
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
          projectSectionHeading.toUpperCase(),
          style: TextThemes(context).displayMedium.copyWith(
            fontWeight: TextWeights.weight900
          )
        ),
        const SizedBox(height: 20),
        Text(
          projectSectionDescription,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          ),
        ),
        const SizedBox(height: 60),
        ...projects.map((project) =>
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: WebProjectCard(project: project),
            )
        )
      ],
    );
  }
}
