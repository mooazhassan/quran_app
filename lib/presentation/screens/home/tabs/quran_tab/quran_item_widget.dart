import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

class QuranItemWidget extends StatelessWidget {
  QuranItemWidget(
      {super.key, required this.suraName, required this.versesNumber});

  String suraName, versesNumber;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                versesNumber,
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
                suraName,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
