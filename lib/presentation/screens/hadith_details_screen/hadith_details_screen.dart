import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

import '../../../core/assets_manager.dart';
import '../../../core/strings_manager.dart';
import '../home/tabs/hadith_tab/hadit_tab.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsManager.lightMainBg),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            StringsManager.appTitle,
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
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      hadith.content,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: Colors.white),
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
