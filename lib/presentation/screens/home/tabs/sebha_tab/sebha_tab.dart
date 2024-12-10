import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/providers/settings_provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> azkar = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر',
  ];
  int counter = 0, index = 0, time = 80;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * .06),
                child: Image.asset(myProvider.isLight()
                    ? AssetsManager.headOfSebhaLight
                    : AssetsManager.headOfSebhaDark),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * .09),
                child: AnimatedRotation(
                  turns: angle,
                  duration: Duration(milliseconds: time),
                  child: Image.asset(
                      height: size.height * .37,
                      myProvider.isLight()
                          ? AssetsManager.bodyOfSebhaLight
                          : AssetsManager.bodyOfSebhaDark),
                ),
              ),
            ],
          ),
          Text(
            AppLocalizations.of(context)!.number_of_tasbeh,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
            child: Text(counter.toString(),
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.black)),
            decoration: BoxDecoration(
              color: Theme.of(context).dividerColor,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: onZekrClick,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
              child: Text(
                azkar[index],
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }

  onZekrClick() {
    time = 200;
    angle += 1 / 33;
    if (counter == 33) {
      time = 400;
      counter = 0;
      angle = 0;
      index++;
      if (index == azkar.length) {
        index = 0;
      }
    } else {
      counter++;
    }
    setState(() {});
  }
}
