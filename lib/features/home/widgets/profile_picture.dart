import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';
import 'package:ross_portfolio/utils/utils.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key, required this.width,});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: offWhite
      ),
      height: Utils.getScreenHeight(context) * 0.6,
      width: width,
    );
  }
}
