import 'package:flutter/material.dart';

import '../data/pokedex.dart';
import '../models/pokemon.dart';
import '../widgets/pkm_type_text.dart';
import '../widgets/route_drawer.dart';

class PokemonScreen extends StatefulWidget {
  const PokemonScreen({super.key});

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  var _isGrid = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon'),
        actions: [
          IconButton(
            onPressed: () => setState(() => _isGrid = !_isGrid),
            icon: Icon(_isGrid ? Icons.list : Icons.grid_view),
          ),
        ],
      ),
      drawer: const RouteDrawer(
        selectedGame: CardGame.pokemon,
      ),
      body: _isGrid
          ? GridView.builder(
              itemCount: pokedex.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: screenWidth ~/ 200,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                final json = pokedex[index];
                final pokemon = Pokemon.fromJson(json);

                return Card(
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: [
                          Expanded(child: Image.asset(pokemon.image.hires ?? pokemon.image.sprite)),
                          Text(pokemon.name.english, style: txtTheme.titleMedium),
                          PkmTypeText(types: pokemon.type),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          : ListView.builder(
              itemCount: pokedex.length,
              itemBuilder: (context, index) {
                final json = pokedex[index];
                final pokemon = Pokemon.fromJson(json);

                return ListTile(
                  onTap: () {},
                  leading: Text('#${pokemon.id}'),
                  title: Text(pokemon.name.english),
                  subtitle: PkmTypeText(types: pokemon.type),
                  trailing: Image.asset(pokemon.image.hires ?? pokemon.image.sprite),
                );
              },
            ),
    );
  }
}
