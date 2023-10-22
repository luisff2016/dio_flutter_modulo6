import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:trilhaapp/pages/splash_screen/splash_screen_delay_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      home: const SplashScreenDelayPage(),
    );
  }
}
