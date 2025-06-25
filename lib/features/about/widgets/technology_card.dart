import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';

class TechnologyCard extends StatefulWidget {
  const TechnologyCard({
    super.key,
    required this.name,
  });

  final String name;

  @override
  State<TechnologyCard> createState() => _TechnologyCardState();
}

class _TechnologyCardState extends State<TechnologyCard> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(7),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        decoration: BoxDecoration(
          color: _isHovered ? black : offWhite,
          borderRadius: BorderRadius.circular(23),

        ),
        child: Text(
          widget.name,
          style: TextThemes(context).bodyMedium.copyWith(
                fontWeight: TextWeights.weight700,
            color: _isHovered ? offWhite : black,
              ),
        ),
      ),
    );
  }
}
