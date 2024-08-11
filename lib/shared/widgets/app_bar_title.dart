import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/string_constants.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.oswald(
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
