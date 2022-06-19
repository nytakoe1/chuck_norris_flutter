import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:first_draft/LocalString.dart';
import 'package:flutter/material.dart';
import 'package:first_draft/pages/main_page.dart';
import 'package:first_draft/pages/menu_screen.dart';
import 'package:first_draft/pages/first_tip.dart';
import 'package:first_draft/pages/tinder.dart';
import 'package:first_draft/pages/message.dart';
import 'package:first_draft/pages/favorite_jokes.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  runApp(
    GetMaterialApp(
      translations: LocaleString(),
      locale: Locale('en', 'US'),
      theme: ThemeData(primaryColor: Colors.white70),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/menu': (context) => const MenuScreen(),
        '/firstTip': (context) => const FirstTipScreen(),
        '/tinder': (context) => const TinderScreen(),
        '/message': (context) => const CreatorMessages(),
        '/favorite': (context) => const FavoriteJokes(),
      },
    ),
  );
}
