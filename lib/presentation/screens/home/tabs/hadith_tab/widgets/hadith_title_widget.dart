import 'package:flutter/material.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/hadit_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key, required this.hadith});

  Hadith hadith;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          textAlign: TextAlign.center,
          hadith.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
