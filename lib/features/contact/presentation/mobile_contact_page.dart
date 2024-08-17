import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ross_portfolio/features/contact/widgets/my_form.dart';
import 'package:ross_portfolio/features/contact/widgets/social_icons_row.dart';

class MobileContactPage extends StatelessWidget {
  const MobileContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(height: 20),
        const MyForm(),
      ],
    );
  }
}
