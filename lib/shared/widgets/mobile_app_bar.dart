import 'package:flutter/material.dart';
import 'package:ross_portfolio/shared/widgets/app_bar_title.dart';

AppBar mobileAppBar(BuildContext context) {
  return AppBar(
    centerTitle: false,
    title: const AppBarTitle(),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.horizontal_split),
      )
    ],
  );
}
