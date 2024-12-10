import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/widgets/hadith_header_widget.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/widgets/hadith_title_widget.dart';
import 'package:quran_app/providers/hadith_provider.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {

  @override
  Widget build(BuildContext context) {
    var hadithProvider = Provider.of<HadithProvider>(context);
    if (hadithProvider.allHadithList.isEmpty) hadithProvider.readHadithFile();
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1, child: Image.asset(AssetsManager.hadithHeaderImage)),
          const HadithHeaderWidget(),
          Expanded(
            flex: 3,
            child: hadithProvider.allHadithList.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                      color: ColorsManger.gold,
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) =>
                        HadithTitleWidget(hadith: hadithProvider.allHadithList[index]),
                    separatorBuilder: (context, index) => Divider(
                      thickness: 3,
                    ),
                    itemCount: hadithProvider.allHadithList.length,
                  ),
          ),
        ],
      ),
    );
  }
}

class Hadith {
  String title, content;

  Hadith({required this.title, required this.content});
}
