import 'package:flutter/material.dart';

import '../../../../../../core/colors_manger.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithHeaderWidget extends StatelessWidget {
  const HadithHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      alignment: Alignment.center,
      width: double.infinity,
      child: Text(
        AppLocalizations.of(context)!.hadithHeader,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal:
              BorderSide(color: Theme.of(context).dividerColor, width: 3),
        ),
      ),
    );
  }
}
