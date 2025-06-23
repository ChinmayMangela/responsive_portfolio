import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';

class TechnologyCard extends StatelessWidget {
  const TechnologyCard({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
        color: offWhite,
        borderRadius: BorderRadius.circular(23),

      ),
      child: Text(
        name,
        style: TextThemes(context).bodyMedium.copyWith(
              fontWeight: TextWeights.weight700,
            ),
      ),
    );
  }
}
