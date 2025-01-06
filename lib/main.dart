import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/fifa_screen.dart';
import 'screens/magic_screen.dart';
import 'screens/pkm_tcg_draw_screen.dart';
import 'screens/pkm_tcg_screen.dart';
import 'screens/pokemon_screen.dart';
import 'screens/ygo_screen.dart';

void main() {
  runApp(const CardGalleryApp());
}

class CardGalleryApp extends StatelessWidget {
  const CardGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.dark,
        ),
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/pokemonTCG':
            return CupertinoPageRoute(builder: (context) => const PkmTcgScreen());
          case '/pokemonTCGDraw':
            return CupertinoPageRoute(builder: (context) => const PkmTcgDrawScreen());
          case '/ygo':
            return CupertinoPageRoute(builder: (context) => const YgoScreen());
          case '/magic':
            return CupertinoPageRoute(builder: (context) => const MagicScreen());
          case '/fifa':
            return CupertinoPageRoute(builder: (context) => const FifaScreen());
          default:
            return CupertinoPageRoute(builder: (context) => const PokemonScreen());
        }
      },
    );
  }
}
