import 'package:flutter/material.dart';

enum CardGame { pokemon, pkmTCG, ygo, magic, fifa }

class RouteDrawer extends StatelessWidget {
  const RouteDrawer({
    super.key,
    this.selectedGame,
  });

  final CardGame? selectedGame;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Image.asset(
              'images/icons/pokeball.png',
              width: 24,
            ),
            title: const Text('Pokemon'),
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
            selected: selectedGame == CardGame.pokemon,
          ),
          ListTile(
            leading: Image.asset(
              'images/icons/pkm_tcg.jpeg',
              width: 24,
            ),
            title: const Text('Pokemon TCG'),
            onTap: () => Navigator.pushReplacementNamed(context, '/pokemonTCG'),
            selected: selectedGame == CardGame.pkmTCG,
          ),
          ListTile(
            leading: Image.asset(
              'images/icons/ygo.png',
              width: 24,
            ),
            title: const Text('Yu-Gi-Oh!'),
            onTap: () => Navigator.pushReplacementNamed(context, '/ygo'),
            selected: selectedGame == CardGame.ygo,
          ),
          ListTile(
            leading: Image.asset(
              'images/icons/magic.png',
              width: 24,
            ),
            title: const Text('Magic: The Gathering'),
            onTap: () => Navigator.pushReplacementNamed(context, '/magic'),
            selected: selectedGame == CardGame.magic,
          ),
          ListTile(
            leading: Image.asset(
              'images/icons/fifa.png',
              width: 24,
            ),
            title: const Text('FIFA'),
            onTap: () => Navigator.pushReplacementNamed(context, '/fifa'),
            selected: selectedGame == CardGame.fifa,
          ),
        ],
      ),
    );
  }
}
