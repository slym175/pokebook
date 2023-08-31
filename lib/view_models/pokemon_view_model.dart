import 'package:flutter/foundation.dart';
import 'package:poke_book/services/pokemon_service.dart';
import 'package:poke_book/utils/models/pokemon.dart';
import 'package:poke_book/utils/repositories/pokemon_repository.dart';

class PokemonViewModel with ChangeNotifier {
  bool isRequestPending = false;
  bool isPokemonLoaded = false;
  bool isRequestError = false;

  late PokemonService pokemonService;

  PokemonViewModel() {
    pokemonService = PokemonService(PokemonApiRepository());
  }

  Future<Pokemon?> getPokemon(int id) async {
    setRequestPendingState(true);
    isRequestError = false;

    Pokemon? pokemon;
    try {
      await Future.delayed(const Duration(seconds: 1), () => {});

      pokemon = await pokemonService
          .getPokemon(id)
          // ignore: invalid_return_type_for_catch_error
          .catchError((onError) => isRequestError = true);
    } catch (e) {
      isRequestError = true;
    }

    isPokemonLoaded = true;
    updateModel(pokemon!, id);
    setRequestPendingState(false);
    notifyListeners();

    return pokemon;
  }

  void setRequestPendingState(bool isPending) {
    isRequestPending = isPending;
    notifyListeners();
  }

  void updateModel(Pokemon pokemon, int id) {
    if (isRequestError) return;
  }
}
