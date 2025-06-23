import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: offWhite,
        ),
        child: Icon(
          icon,
          color: black,
        ),
      ),
    );
  }
}
