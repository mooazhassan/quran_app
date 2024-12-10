import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/quran_provider.dart';

import '../presentation/screens/hadith_details_screen/hadith_details_screen.dart';
import '../presentation/screens/home/home_screen.dart';
import '../presentation/screens/quran_details_screen/quran_details_screen.dart';
import '../presentation/screens/splash/splash_screen.dart';

class RoutesManager {
  static const String splashRoute = '/splash';
  static const String homeRoute = '/home';
  static const String quranDetails = '/quranDetails';
  static const String hadithDetails = '/hadithDetails';
  static Map<String, WidgetBuilder> routes = {
    RoutesManager.splashRoute: (_) => SplashScreen(),
    RoutesManager.homeRoute: (_) => HomeScreen(),
    RoutesManager.quranDetails: (_) => ChangeNotifierProvider(
        create: (context) => QuranProvider(), child: QuranDetailsScreen()),
    RoutesManager.hadithDetails: (_) => HadithDetailsScreen(),
  };
}
