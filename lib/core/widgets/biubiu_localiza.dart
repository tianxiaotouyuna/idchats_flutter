import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Widget BiuBiuLocaliza(List<Locale> supportedLocales, Widget home) {
  return MaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      // AppLocalizations.delegate,
    ],
    supportedLocales: supportedLocales,
    home: home,
  );
}
