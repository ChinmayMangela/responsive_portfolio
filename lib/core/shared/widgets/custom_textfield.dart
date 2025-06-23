import 'package:flutter/material.dart';

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
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
        validator: validator,
        maxLines: isMessageField! ? 3 : 1,
        controller: controller,
        decoration: InputDecoration(
          fillColor: Theme.of(context).colorScheme.secondaryContainer,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondaryContainer
            )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.secondaryContainer,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondaryContainer,
              )
          ),
        ),
      ),
    );
  }
}
