import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';
import 'package:ross_portfolio/utils/utils.dart';

class PictureContainer extends StatelessWidget {
  const PictureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Utils.getScreenHeight(context) * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: offWhite
      ),
    );
  }
}
