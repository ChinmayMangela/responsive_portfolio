import 'package:flutter/material.dart';

class MyCapabilitiesDescription extends StatelessWidget {
  const MyCapabilitiesDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'I am always looking to add more skills.Morbi egestas neque eu blandit fermentum. Nulla ac lobortis ligula. Pellentesque ac ex at purus faucibus tristique ut et dolor. ',
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
