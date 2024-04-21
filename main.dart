import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'game_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MathApp());
}

class MathApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          GameScreen.id: (context) => GameScreen(),
        }
    );
  }
}