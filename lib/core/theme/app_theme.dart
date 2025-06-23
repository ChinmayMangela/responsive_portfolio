

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';

class AppTheme {

  static ThemeData appTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: white,
    textTheme: _textTheme,
    drawerTheme: _drawerTheme,
    appBarTheme: _appBarTheme,
    iconTheme: _iconTheme,
    listTileTheme: _listTileTheme,
  );

  static TextTheme get _textTheme => GoogleFonts.oswaldTextTheme(
    ThemeData.light().textTheme
  );

  static DrawerThemeData get _drawerTheme => const DrawerThemeData(
    backgroundColor: offWhite,
  );

  static AppBarTheme get _appBarTheme => const AppBarTheme(
    backgroundColor: white,
    elevation: 0,
    centerTitle: false,

  );

  static IconThemeData get _iconTheme => const IconThemeData(
    color: black
  );

  static ListTileThemeData get _listTileTheme => const ListTileThemeData(
      iconColor: black,
      textColor: black
  );
}