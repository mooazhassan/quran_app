import 'package:flutter/material.dart';

class SuraVersesWidget extends StatelessWidget {
  SuraVersesWidget({super.key, required this.verse});

  String verse;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          verse,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
