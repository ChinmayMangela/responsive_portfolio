import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ross_portfolio/constants/string_constants.dart';
import 'package:ross_portfolio/features/home/widgets/contact_me_button.dart';
import 'package:ross_portfolio/features/home/widgets/social_button.dart';

class MyIntro extends StatelessWidget {
  const MyIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'HI, I AM',
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontSize: 40
          ),
        ),
        Text(
            '$name.',
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
        const SizedBox(height: 10),
        _buildDescription(context),
        const SizedBox(height: 20),
        const Row(
          children: [
            ContactMeButton(),
            SizedBox(width: 10),
            SocialButton(icon: FontAwesomeIcons.linkedin),
            SizedBox(width: 10),
            SocialButton(icon: FontAwesomeIcons.github)
          ],
        )
      ],
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Text(
      'my description.....',
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: Colors.grey,
      ),
    );
  }
}
