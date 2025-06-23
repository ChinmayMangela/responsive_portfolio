import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';
import 'package:ross_portfolio/core/constants/string_constants.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
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
          projectSectionHeading.toUpperCase(),
          style: TextThemes(context).displaySmall.copyWith(
            fontWeight: TextWeights.weight900
          )
        ),
        const SizedBox(height: 20),
        Text(
          projectSectionDescription,
          style: TextThemes(context).bodyLarge.copyWith(
            color: grey
          ),
        ),
        const SizedBox(height: 60),
        ...projects.map((project) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: MobileProjectCard(project: project),
          );
        })
      ],
    );
  }
}
