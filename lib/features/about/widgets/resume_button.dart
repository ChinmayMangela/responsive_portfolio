import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/color_constants.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: offWhite,
        ),
        child: Row(
          children: [
            Text(
              'DOWNLOAD RESUME',
              style: TextThemes(context).bodyMedium.copyWith(
                fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(width: 5),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: offWhite,
              ),
              child: const Center(
                child: Icon(
                  Icons.save_alt,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
