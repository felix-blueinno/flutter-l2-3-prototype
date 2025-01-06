import 'package:flutter/material.dart';

import '../widgets/route_drawer.dart';

class FifaScreen extends StatelessWidget {
  const FifaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIFA'),
      ),
      drawer: const RouteDrawer(
        selectedGame: CardGame.fifa,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => const ListTile(
          title: Text('???'),
        ),
      ),
    );
  }
}
