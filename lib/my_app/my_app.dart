import 'package:flutter/material.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/routes_manager.dart';
import 'package:quran_app/presentation/screens/hadith_details_screen/hadith_details_screen.dart';
import 'package:quran_app/presentation/screens/home/home_screen.dart';
import 'package:quran_app/presentation/screens/quran_details_screen/quran_details_screen.dart';

import '../presentation/screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.splashRoute: (_) => SplashScreen(),
        RoutesManager.homeRoute: (_) => HomeScreen(),
        RoutesManager.quranDetails: (_) => QuranDetailsScreen(),
        RoutesManager.hadithDetails: (_) => HadithDetailsScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
    );
  }
}
