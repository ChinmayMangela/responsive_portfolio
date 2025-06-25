import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
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
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 7),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _isHovered ? black : offWhite,
          ),
          child: Icon(
            widget.icon,
            color: _isHovered ? offWhite : black,
          ),
        ),
      ),
    );
  }
}
