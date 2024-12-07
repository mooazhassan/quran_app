import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

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
           buildSelcetedLanguageWidget(context, 'English'),
            SizedBox(
              height: 20,
            ),
           buildUnSelcetedLanguageWidget(context, 'العربيه')
          ],
        ),
      ),
    );
  }

  Widget buildSelcetedLanguageWidget(context, String text) {
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

  Widget buildUnSelcetedLanguageWidget(context, String text) {
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
