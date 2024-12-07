import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            buildSelcetedThemeWidget(context, 'Light'),
            SizedBox(
              height: 20,
            ),
            buildUnSelcetedThemeWidget(context, 'Dark')
          ],
        ),
      ),
    );
  }

  Widget buildSelcetedThemeWidget(context, String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.white),
        ),
        Spacer(),
        Icon(
          Icons.check,
          size: 40,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget buildUnSelcetedThemeWidget(context, String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
