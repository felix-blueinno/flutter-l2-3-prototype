import 'package:flutter/material.dart';

import '../widgets/route_drawer.dart';

class MagicScreen extends StatelessWidget {
  const MagicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magic: The Gathering'),
      ),
      drawer: const RouteDrawer(
        selectedGame: CardGame.magic,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => const ListTile(
          title: Text('???'),
        ),
      ),
    );
  }
}
