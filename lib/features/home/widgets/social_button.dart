import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.icon,});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme
            .of(context)
            .colorScheme
            .secondaryContainer,
      ),
      child: Icon(icon, color: Theme.of(context).colorScheme.primaryContainer,),
    );
  }
}
