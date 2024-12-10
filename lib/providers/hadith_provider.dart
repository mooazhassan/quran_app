import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../presentation/screens/home/tabs/hadith_tab/hadit_tab.dart';

class HadithProvider extends ChangeNotifier {
  List<Hadith> allHadithList = [];

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
      notifyListeners();
    }
  }
}
