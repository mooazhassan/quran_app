import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/presentation/screens/quran_details_screen/widgets/sura_verses_widget.dart';

import '../../../core/assets_manager.dart';
import '../home/tabs/quran_tab/widgets/quran_item_widget.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (verses.isEmpty) readFileContent(suraItem.index + 1);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetsManager.lightMainBg))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(suraItem.suraName),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (context, index) =>
                    SuraVersesWidget(verse: verses[index]),
                itemCount: verses.length,
              ),
      ),
    );
  }

  void readFileContent(int index) async {
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');
    verses = fileContent.trim().split('\n');
    setState(() {});
  }
}
