import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/shared/widgets/text_icon_button.dart';

class ContactMeButton extends StatelessWidget {
  const ContactMeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextIconButton(
      onTap: () {},
      text: 'CONTACT ME',
      icon: Icons.arrow_circle_right_rounded,
    );
  }
}
