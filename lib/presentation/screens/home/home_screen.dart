import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/core/strings_manager.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/hadit_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/settings_tab/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindx = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetsManager.lightMainBg))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(StringsManager.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: ColorsManger.goldColor,
                icon: ImageIcon(AssetImage(AssetsManager.quranIcon), size: 40),
                label: StringsManager.quranLabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManger.goldColor,
                icon: ImageIcon(AssetImage(AssetsManager.hadithIcon), size: 40),
                label: StringsManager.hadithLabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManger.goldColor,
                icon: ImageIcon(
                  AssetImage(AssetsManager.sebhaIcon),
                  size: 40,
                ),
                label: StringsManager.sebhaLabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManger.goldColor,
                icon: ImageIcon(AssetImage(AssetsManager.radioIcon), size: 40),
                label: StringsManager.radioLabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManger.goldColor,
                icon: Icon(
                  Icons.settings,
                  size: 40,
                ),
                label: StringsManager.settingLabel)
          ],
          currentIndex: selectedindx,
          onTap: (indx) {
            selectedindx = indx;
            setState(() {});
          },
        ),
        body: tabs[selectedindx],
      ),
    );
  }
}
