import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'localization/languages.dart';
import 'localization/locale_home_screen.dart';

void main() {
  runApp(const GetxApp());
}

class GetxApp extends StatelessWidget {
  const GetxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx App',
      translations: AppTranslations(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: LocaleHomeScreen(),
      //HomeScreen(),
      // getPages: [
      //   GetPage(name: '/', page: () => HomeScreen()),
      //   GetPage(name: '/ScreenOne', page: () => ScreenOne()),
      // ],
    );
  }
}
