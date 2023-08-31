import 'package:poke_book/utils/interfaces/pokemon_api.dart';
import 'package:poke_book/utils/models/pokemon.dart';

class PokemonService {
  final PokemonApi pokemonApi;
  PokemonService(this.pokemonApi);

  Future<Pokemon> getPokemon(int id) async {
    return await pokemonApi.getPokemon(id);
  }
}
