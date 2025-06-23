import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';

import 'app_bar_title.dart';

AppBar webAppBar(BuildContext context) {
  return AppBar(
    title: const AppBarTitle(),
    actions: [
      TextButton(onPressed: () {

      }, child: _buildText('Work', context)),
      TextButton(onPressed: () {}, child: _buildText('About', context)),
      TextButton(onPressed: () {}, child: _buildText('Contact', context))
    ],
  );
}

  Widget _buildText(String text, BuildContext context) {
    return Text(
      text,
      style: TextThemes(context).bodyMedium
    );
  }



