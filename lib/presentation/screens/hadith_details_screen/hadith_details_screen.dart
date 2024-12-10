import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/colors_manger.dart';

import '../../../core/assets_manager.dart';
import '../../../core/strings_manager.dart';
import '../../../providers/settings_provider.dart';
import '../home/tabs/hadith_tab/hadit_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(myProvider.isLight()
              ? AssetsManager.lightMainBg
              : AssetsManager.darkMainBg),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.titleApp,
          ),
        ),
        body: Center(
          child: Card(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      hadith.title,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  Divider(
                    color: myProvider.isLight() ? Colors.white : Colors.yellow,
                    thickness: 1,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      hadith.content,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
