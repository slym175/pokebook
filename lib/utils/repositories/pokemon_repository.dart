import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:poke_book/utils/interfaces/pokemon_api.dart';
import 'package:poke_book/utils/models/pokemon.dart';

class PokemonApiRepository extends PokemonApi {
  static const endPointUrl = 'https://pokeapi.co/api/v2/pokemon/';
  late http.Client httpClient;

  PokemonApiRepository() {
    httpClient = http.Client();
  }

  // ignore: annotate_overrides
  Future<Pokemon> getPokemon(int id) async {
    final requestUrl = '$endPointUrl/$id';
    final response = await httpClient.get(Uri.encodeFull(requestUrl) as Uri);

    if (response.statusCode != 200) {
      throw Exception(
          'error retrieving pokemon for id $id: ${response.statusCode}');
    }

    return Pokemon.fromJson(jsonDecode(response.body));
  }
}
