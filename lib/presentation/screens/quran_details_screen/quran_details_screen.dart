import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/presentation/screens/quran_details_screen/widgets/sura_verses_widget.dart';
import 'package:quran_app/providers/quran_provider.dart';

import '../../../core/assets_manager.dart';
import '../../../providers/settings_provider.dart';
import '../home/tabs/quran_tab/widgets/quran_item_widget.dart';

class QuranDetailsScreen extends StatelessWidget {
  QuranDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    var quranProvider = Provider.of<QuranProvider>(context);

    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (quranProvider.verses.isEmpty)
      quranProvider.readFileContent(suraItem.index + 1);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(myProvider.isLight()
                  ? AssetsManager.lightMainBg
                  : AssetsManager.darkMainBg))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(suraItem.suraName),
        ),
        body: quranProvider.verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (context, index) =>
                    SuraVersesWidget(verse: quranProvider.verses[index]),
                itemCount: quranProvider.verses.length,
              ),
      ),
    );
  }
}
