import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';
import '../../../core/shared/widgets/custom_textfield.dart';

class InputComponentWithLabel extends StatelessWidget {
  const InputComponentWithLabel({
    super.key,
    required this.label,
    required this.controller,
    this.validator,
  });

  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextThemes(context).bodySmall.copyWith(
            fontWeight: TextWeights.weight700
              ),
        ),
        CustomTextField(
          controller: controller,
          isMessageField: label == 'Message',
          validator: validator,
        )
      ],
    );
  }
}
