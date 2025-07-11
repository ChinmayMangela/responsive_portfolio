import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';

class ProjectPictureCard extends StatelessWidget {
  const ProjectPictureCard({super.key, required this.pictureUrl, required this.pictureCardHeight,});

  final String pictureUrl;
  final double pictureCardHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: pictureCardHeight,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: offWhite
      ),
      child: Image.asset(pictureUrl),
    );
  }
}
