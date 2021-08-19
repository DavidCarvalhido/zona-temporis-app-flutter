import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:zona_temporis/components/navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      home: NavigationBar(),
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.purple, //Color(0xFFCE93D8) ou #4864E6 (não é a mesma cor, atenção) alterar para Verde (codigo no home.dart)
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.purple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('de', ''), // German, no country code
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
        Locale('fr', ''), // French, no country code
        Locale('hi', ''), // Hindi, no country code
        Locale('it', ''), // Italian, no country code
        Locale('pt', ''), // Portuguese, no country code
      ],
    );
  }
}
