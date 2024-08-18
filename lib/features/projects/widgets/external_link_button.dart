import 'package:flutter/material.dart';

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
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: colorScheme.primaryContainer,
                    ),
              ),
              const SizedBox(width: 6),
              Icon(
                icon,
                color: colorScheme.primaryContainer,
              )
            ],
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
