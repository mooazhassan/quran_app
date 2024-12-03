import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/core/routes_manager.dart';

class QuranItemWidget extends StatelessWidget {
  QuranItemWidget({super.key, required this.suraItem});

  SuraItem suraItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManager.quranDetails,
            arguments: suraItem);
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  suraItem.versesNumber,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            VerticalDivider(
              width: 3,
              color: ColorsManger.goldColor,
              thickness: 3,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  suraItem.suraName,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuraItem {
  String suraName, versesNumber;
  int index;

  SuraItem(
      {required this.suraName,
      required this.versesNumber,
      required this.index});
}
