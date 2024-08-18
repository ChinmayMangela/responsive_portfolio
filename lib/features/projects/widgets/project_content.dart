import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ross_portfolio/features/projects/models/project.dart';
import 'package:ross_portfolio/features/projects/widgets/external_link_button.dart';
import 'package:ross_portfolio/shared/widgets/custom_divider.dart';

class ProjectContent extends StatelessWidget {
  const ProjectContent({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTitle(context),
        const SizedBox(height: 10),
        _buildDescription(context),
        const SizedBox(height: 55),
        Text(
          'PROJECT INFO',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        const SizedBox(height: 12),
        if (project.client != null)
          _buildInfoRow('Client', project.client!, context),
        const CustomDivider(
          topPadding: 13,
          bottomPadding: 13,
        ),
        _buildInfoRow('Year', project.year, context),
        const CustomDivider(
          topPadding: 13,
          bottomPadding: 13,
        ),
        _buildInfoRow('Role', project.roleInProject, context),
        const CustomDivider(
          topPadding: 13,
          bottomPadding: 13,
        ),
        const SizedBox(height: 13),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ExternalLinkButton(
                text: 'LIVE DEMO',
                icon: Icons.arrow_forward,
                onPressed: () {},
              ),
              const SizedBox(width: 20),
              ExternalLinkButton(
                text: 'SEE ON GITHUB',
                icon: FontAwesomeIcons.github,
                onPressed: () {},
              ),
            ],
          ),
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
