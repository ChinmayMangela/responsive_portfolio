import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.isMessageField,
    required this.validator,
  });

  final TextEditingController controller;
  final bool? isMessageField;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: TextFormField(
        style: TextThemes(context).bodyLarge,
        validator: validator,
        maxLines: isMessageField! ? 3 : 1,
        controller: controller,
        decoration: InputDecoration(
          fillColor: offWhite,
          filled: true,
          border: _outlinedInputBorder(),
          enabledBorder: _outlinedInputBorder(),
          focusedBorder: _outlinedInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder _outlinedInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none
    );
  }
}
