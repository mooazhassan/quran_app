import 'package:flutter/material.dart';

import '../../../../../core/assets_manager.dart';
import '../../../../../core/colors_manger.dart';
import '../../../../../core/strings_manager.dart';

class QuranTabHeaderWidget extends StatelessWidget {
  const QuranTabHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(width: 3, color: ColorsManger.goldColor))),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              StringsManager.versesNumberLabel,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            )),
            Container(
              width: 3,
              color: ColorsManger.goldColor,
            ),
            Expanded(
                child: Text(
              StringsManager.chapterNameLabel,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            )),
          ],
        ),
      ),
    );
  }
}
