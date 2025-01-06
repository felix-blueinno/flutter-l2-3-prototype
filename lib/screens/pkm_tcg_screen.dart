import 'package:flutter/material.dart';
import 'package:l2/data/tcg/sv3.dart';
import 'package:l2/models/pokemon_card.dart';

import '../widgets/route_drawer.dart';

class PkmTcgScreen extends StatelessWidget {
  const PkmTcgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon TCG'),
      ),
      drawer: const RouteDrawer(
        selectedGame: CardGame.pkmTCG,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 245 / 342,
            maxCrossAxisExtent: 245,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: sv3.length,
          itemBuilder: (context, index) {
            final json = sv3[index];
            final pkmCard = PokemonCard.fromJson(json);
            return Image.network(pkmCard.images?.small ?? '');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.card_giftcard_outlined),
        label: const Text('Feeling Lucky!'),
      ),
    );
  }
}
