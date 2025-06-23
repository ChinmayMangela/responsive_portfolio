import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
import '../../constants/string_constants.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextThemes(context).headlineSmall.copyWith(
        fontWeight: TextWeights.weight700
      )
    );
  }
}
