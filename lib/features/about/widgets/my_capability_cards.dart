import 'package:flutter/material.dart';
import 'package:ross_portfolio/features/about/data/technologies.dart';
import 'package:ross_portfolio/features/about/widgets/technology_card.dart';

class MyCapabilityCards extends StatelessWidget {
  const MyCapabilityCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: technologiesIKnow.map((technology) {
        return TechnologyCard(name: technology);
      }).toList(),
    );
  }
}
