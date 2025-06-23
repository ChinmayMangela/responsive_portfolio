import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.onTap,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: 40,
        decoration: BoxDecoration(
          color: black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'SUBMIT',
            style: TextThemes(context).bodySmall.copyWith(
                  color: white
                ),
          ),
        ),
      ),
    );
  }
}
