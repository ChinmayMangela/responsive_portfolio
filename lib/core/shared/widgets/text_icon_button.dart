import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';

class TextIconButton extends StatefulWidget {
  const TextIconButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  final String text;
  final IconData icon;
  final void Function() onTap;

  @override
  State<TextIconButton> createState() => _TextIconButtonState();
}

class _TextIconButtonState extends State<TextIconButton> {
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
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: _isHovered ? black : offWhite,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text,
                style: TextStyle(
                    fontSize: 16, color: _isHovered ? offWhite : black),
              ),
              const SizedBox(width: 8),
              Icon(widget.icon, color: _isHovered ? offWhite : black),
            ],
          ),
        ),
      ),
    );
  }
}
