import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/projects/widgets/project_picture_card.dart';
import 'package:ross_portfolio/shared/widgets/custom_divider.dart';
import '../models/project.dart';

class MobileProjectCard extends StatelessWidget {
  const MobileProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectPictureCard(pictureUrl: project.imageUrl),
        const SizedBox(height: 30),
        _buildTitle(context),
        const SizedBox(height: 10),
        _buildDescription(context),
        const SizedBox(height: 25),
        Text(
          'PROJECT INFO',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        const SizedBox(height: 15),
        if(project.client != null)
          _buildInfoRow('Client', project.client!, context),
          const CustomDivider(
            dividerPadding: 13,
          ),
        _buildInfoRow('Year', project.year, context),
        const CustomDivider(
          dividerPadding: 13,
        ),
        _buildInfoRow('Role', project.roleInProject, context),
        const CustomDivider(
          dividerPadding: 13,
        ),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      project.title,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Text(
      project.description,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
    );
  }

  Widget _buildInfoRow(String label, String value, BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: textTheme.bodyLarge!.copyWith(
            color: colorScheme.primary,
          ),
        ),
        Text(
          value,
          style: textTheme.bodyLarge!.copyWith(
            color: colorScheme.secondary,
          ),
        )
      ],
    );
  }
}
