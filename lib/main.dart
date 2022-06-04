import 'package:flutter/material.dart';
import 'package:first_draft/pages/main_page.dart';
import 'package:first_draft/pages/menu_screen.dart';
import 'package:first_draft/pages/first_tip.dart';
import 'package:first_draft/pages/tinder.dart';
import 'package:first_draft/pages/message.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(primaryColor: Colors.white70),
        initialRoute: '/',
        routes: {
          '/': (context) => const MainScreen(),
          '/menu': (context) => const MenuScreen(),
          '/firstTip': (context) => const FirstTipScreen(),
          '/tinder': (context) => const TinderScreen(),
          '/message': (context) => const CreatorMessages(),
        },
      ),
    );
