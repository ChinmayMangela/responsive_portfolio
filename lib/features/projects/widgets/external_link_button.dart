import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/shared/widgets/text_icon_button.dart';

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
    return TextIconButton(
      text: text,
      icon: icon,
      onTap: onPressed,
    );
  }
}
