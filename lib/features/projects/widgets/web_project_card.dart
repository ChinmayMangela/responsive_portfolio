import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/projects/widgets/project_content.dart';
import 'package:ross_portfolio/features/projects/widgets/project_picture_card.dart';
import '../models/project.dart';

class WebProjectCard extends StatelessWidget {
  const WebProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ProjectPictureCard(
            pictureUrl: project.imageUrl,
            pictureCardHeight: MediaQuery.of(context).size.height * 0.7,
          ),
        ),
        const SizedBox(width: 30),
        Expanded(child: ProjectContent(project: project)),
      ],
    );
  }
}
