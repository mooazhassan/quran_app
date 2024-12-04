import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/widgets/hadith_header_widget.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/widgets/hadith_title_widget.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> allHadithList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadithList.isEmpty) readHadithFile();
    return Container(
      child: Column(
        children: [
          Image.asset(AssetsManager.hadithHeaderImage),
          const HadithHeaderWidget(),
          Expanded(
            child: allHadithList.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                      color: ColorsManger.goldColor,
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) =>
                        HadithTitleWidget(hadith: allHadithList[index]),
                    separatorBuilder: (context, index) => Divider(
                      color: ColorsManger.goldColor,
                      thickness: 3,
                    ),
                    itemCount: allHadithList.length,
                  ),
          ),
        ],
      ),
    );
  }

  void readHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadithList = fileContent.trim().split('#');
    for (int i = 0; i < hadithList.length; i++) {
      String hadithItem = hadithList[i];
      List<String> hadithLines = hadithItem.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      Hadith hadith = Hadith(title: title, content: content);
      allHadithList.add(hadith);
      print(title);
      print(content);
    }
    setState(() {});
  }
}

class Hadith {
  String title, content;

  Hadith({required this.title, required this.content});
}
