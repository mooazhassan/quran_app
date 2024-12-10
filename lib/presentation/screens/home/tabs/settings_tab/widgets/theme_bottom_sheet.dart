import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/settings_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

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
                  myProvider.changeAppTheme(ThemeMode.light);
                },
                child: myProvider.isLight()
                    ? buildSelcetedThemeWidget(
                        context, AppLocalizations.of(context)!.light)
                    : buildUnSelcetedThemeWidget(
                        context, AppLocalizations.of(context)!.light)),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                myProvider.changeAppTheme(ThemeMode.dark);
              },
              child: !myProvider.isLight()
                  ? buildSelcetedThemeWidget(
                      context, AppLocalizations.of(context)!.dark)
                  : buildUnSelcetedThemeWidget(
                      context, AppLocalizations.of(context)!.dark),
            ),
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
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Spacer(),
        Icon(Icons.check, size: 40, color: Theme.of(context).dividerColor),
      ],
    );
  }

  Widget buildUnSelcetedThemeWidget(context, String text) {
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
