import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/shared/widgets/text_icon_button.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextIconButton(
      onTap: () {},
      text: 'DOWNLOAD RESUME',
      icon: Icons.save_alt,
    );
  }
}
