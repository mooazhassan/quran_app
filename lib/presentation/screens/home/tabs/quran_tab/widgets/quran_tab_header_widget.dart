import 'package:flutter/material.dart';

import '../../../../../../core/assets_manager.dart';
import '../../../../../../core/colors_manger.dart';
import '../../../../../../core/strings_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTabHeaderWidget extends StatelessWidget {
  const QuranTabHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal:
              BorderSide(width: 3, color: Theme.of(context).dividerColor),
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.versesNumber,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Container(
              width: 3,
              color: Theme.of(context).dividerColor,
            ),
            Expanded(
                child: Text(
              AppLocalizations.of(context)!.chapterName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            )),
          ],
        ),
      ),
    );
  }
}
