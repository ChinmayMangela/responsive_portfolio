import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';

class ExternalLinkButton extends StatelessWidget {
  const ExternalLinkButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  final String text;
  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                text,
                style: TextThemes(context).bodyLarge.copyWith(
                      fontWeight: TextWeights.weight900
                    ),
              ),
              const SizedBox(width: 6),
              Icon(
                icon,
              )
            ],
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
