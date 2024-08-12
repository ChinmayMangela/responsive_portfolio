import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.dividerPadding});

  final double dividerPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: dividerPadding,
      ),
      child: const Divider(
        thickness: 0.2,
      ),
    );
  }
}
