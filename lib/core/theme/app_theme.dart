

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';

class AppTheme {

  static ThemeData appTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: backgroundColor,
    textTheme: _textTheme,
    drawerTheme: _drawerTheme,
    appBarTheme: _appBarTheme,
  );

  static TextTheme get _textTheme => GoogleFonts.oswaldTextTheme(
    ThemeData.light().textTheme
  );

  static DrawerThemeData get _drawerTheme => const DrawerThemeData(
    backgroundColor: offWhite,
  );

  static AppBarTheme get _appBarTheme => const AppBarTheme(
    backgroundColor: backgroundColor,
    elevation: 0,
    centerTitle: false,

  );
}