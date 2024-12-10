import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/core/strings_manager.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/hadit_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/settings_tab/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/providers/hadith_provider.dart';

import '../../../providers/settings_provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindx = 0;

  List<Widget> tabs = [
    QuranTab(),
    ChangeNotifierProvider(
        create: (context) => HadithProvider(), child: HadithTab()),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(myProvider.isLight()
                  ? AssetsManager.lightMainBg
                  : AssetsManager.darkMainBg))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.titleApp),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage(AssetsManager.quranIcon), size: 40),
                  label: AppLocalizations.of(context)!.quranTab),
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage(AssetsManager.hadithIcon), size: 40),
                  label: AppLocalizations.of(context)!.hadithTab),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AssetsManager.sebhaIcon),
                    size: 40,
                  ),
                  label: AppLocalizations.of(context)!.sebhaTab),
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage(AssetsManager.radioIcon), size: 40),
                  label: AppLocalizations.of(context)!.radioTab),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    size: 40,
                  ),
                  label: AppLocalizations.of(context)!.settingsTab)
            ],
            currentIndex: selectedindx,
            onTap: (indx) {
              selectedindx = indx;
              setState(() {});
            },
          ),
        ),
        body: tabs[selectedindx],
      ),
    );
  }
}
