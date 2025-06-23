


import 'package:flutter/material.dart';

class TextWeights {

  static const FontWeight weight100 = FontWeight.w100;
  static const FontWeight weight200 = FontWeight.w200;
  static const FontWeight weight300 = FontWeight.w300;
  static const FontWeight weight400 = FontWeight.w400;
  static const FontWeight weight500 = FontWeight.w500;
  static const FontWeight weight600 = FontWeight.w600;
  static const FontWeight weight700 = FontWeight.w700;
  static const FontWeight weight800 = FontWeight.w800;
  static const FontWeight weight900 = FontWeight.w900;
}


class TextThemes {
  final BuildContext context;

  TextThemes(this.context);

  TextStyle get headlineLarge => Theme.of(context).textTheme.headlineLarge!;
  TextStyle get headlineMedium => Theme.of(context).textTheme.headlineMedium!;
  TextStyle get headlineSmall => Theme.of(context).textTheme.headlineSmall!;
  TextStyle get titleLarge => Theme.of(context).textTheme.titleLarge!;
  TextStyle get titleMedium => Theme.of(context).textTheme.titleMedium!;
  TextStyle get titleSmall => Theme.of(context).textTheme.titleSmall!;
  TextStyle get bodyLarge => Theme.of(context).textTheme.bodyLarge!;
  TextStyle get bodyMedium => Theme.of(context).textTheme.bodyMedium!;
  TextStyle get bodySmall => Theme.of(context).textTheme.bodySmall!;
  TextStyle get labelLarge => Theme.of(context).textTheme.labelLarge!;
  TextStyle get labelMedium => Theme.of(context).textTheme.labelMedium!;
  TextStyle get labelSmall => Theme.of(context).textTheme.labelSmall!;
  TextStyle get displayLarge => Theme.of(context).textTheme.displayLarge!;
  TextStyle get displayMedium => Theme.of(context).textTheme.displayMedium!;
  TextStyle get displaySmall => Theme.of(context).textTheme.displaySmall!;
}