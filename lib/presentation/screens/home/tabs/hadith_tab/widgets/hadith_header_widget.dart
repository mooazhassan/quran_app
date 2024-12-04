import 'package:flutter/material.dart';

import '../../../../../../core/colors_manger.dart';

class HadithHeaderWidget extends StatelessWidget {
  const HadithHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      alignment: Alignment.center,
      width: double.infinity,
      child: Text(
        'El-Hdith',
        style: Theme
            .of(context)
            .textTheme
            .labelMedium,
      ),
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: ColorsManger.goldColor, width: 3),
        ),
      ),
    );
  }
}
