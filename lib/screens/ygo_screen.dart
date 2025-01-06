import 'package:flutter/material.dart';

import '../widgets/route_drawer.dart';

class YgoScreen extends StatelessWidget {
  const YgoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yu-Gi-Oh!'),
      ),
      drawer: const RouteDrawer(
        selectedGame: CardGame.ygo,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => const ListTile(
          title: Text('???'),
        ),
      ),
    );
  }
}
