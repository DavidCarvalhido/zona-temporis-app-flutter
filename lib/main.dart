import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:zona_temporis/components/navigation_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(174, 100, 209, 0.1),
  100: Color.fromRGBO(174, 100, 209, 0.2),
  200: Color.fromRGBO(174, 100, 209, 0.3),
  300: Color.fromRGBO(174, 100, 209, 0.4),
  400: Color.fromRGBO(174, 100, 209, 0.5),
  500: Color.fromRGBO(174, 100, 209, 0.6),
  600: Color.fromRGBO(174, 100, 209, 0.7),
  700: Color.fromRGBO(174, 100, 209, 0.8),
  800: Color.fromRGBO(174, 100, 209, 0.9),
  900: Color.fromRGBO(174, 100, 209, 1),
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialColor colorCustom = MaterialColor(0xFFAE64D1, color);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      home: NavigationBottomBar(),
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: colorCustom,
        //primarySwatch: Color.fromRGBO(58, 66, 86, 1.0), //Color(0xFFCE93D8) ou #4864E6 (não é a mesma cor, atenção) alterar para Verde (codigo no home.dart)
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color.fromRGBO(174, 100, 209, 1),
      ),
      /*darkTheme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.green,
      ),*/
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
