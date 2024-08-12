import 'package:flutter/material.dart';

class ProjectPictureCard extends StatelessWidget {
  const ProjectPictureCard({super.key, required this.pictureUrl,});

  final String pictureUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: Image.asset(pictureUrl),
    );
  }
}
