import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../providers/settings_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                myProvider.changeAppLanguage('en');
                log(myProvider.language);
              },
              child: myProvider.isEnglish()
                  ? buildSelcetedLanguageWidget(context, 'English')
                  : buildUnSelcetedLanguageWidget(context, 'English'),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                myProvider.changeAppLanguage('ar');
                log(myProvider.language);
              },
              child: !myProvider.isEnglish()
                  ? buildSelcetedLanguageWidget(context, 'العربيه')
                  : buildUnSelcetedLanguageWidget(context, 'العربيه'),
            )
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
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Spacer(),
        Icon(
          Icons.check,
          size: 40,
          color: Theme.of(context).dividerColor,
        ),
      ],
    );
  }

  Widget buildUnSelcetedLanguageWidget(context, String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
