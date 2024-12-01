import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';

import '../../../core/routes_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      if(context.mounted){
        Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
      }
    });
    return Container(
      child: Image.asset(AssetsManager.lightSpalsh),
    );
  }
}
