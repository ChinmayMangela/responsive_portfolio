import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ross_portfolio/features/contact/widgets/my_form.dart';
import 'package:ross_portfolio/features/contact/widgets/social_icons_row.dart';

class WebContactPage extends StatelessWidget {
  const WebContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LET\'S CONNECT',
                style: GoogleFonts.oswald(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 20),
              const SocialIconsRow(),
            ],
          ),
        ),
        const SizedBox(width: 20),
        const Expanded(
          child: MyForm(),
        ),
      ],
    );
  }
}
