import 'package:flutter/material.dart';

import 'app_bar_title.dart';

AppBar mobileAppBar(BuildContext context) {
  return AppBar(
    centerTitle: false,
    title: const AppBarTitle(),
  );
}
