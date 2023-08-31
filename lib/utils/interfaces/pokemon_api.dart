import 'package:poke_book/utils/models/pokemon.dart';

abstract class PokemonApi {
  Future<Pokemon> getPokemon(int id);
}
