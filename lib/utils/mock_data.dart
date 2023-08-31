import 'package:poke_book/utils/models/app_language.dart';
import 'package:poke_book/utils/models/pokemon.dart';
import 'package:poke_book/utils/models/species.dart';
import 'package:poke_book/utils/models/type.dart';

class MockData {
  final List<String> orderTypesList = <String>[
    'None',
    'Lowest number',
    'Higher number',
    'A-Z',
    'Z-A'
  ];

  final List<String> pokemonTypesList = <String>[
    'all kinds',
    'water',
    'dragon',
    'electric',
    'fairy',
    'ghost',
    'fire',
    'ice',
    'grass',
    'bug',
    'fighting',
    'normal',
    'dark',
    'steel',
    'rock',
    'psychic',
    'ground',
    'poison',
    'flying'
  ];

  late List<Pokemon> pokemonsEmptyList = [];
  late List<Pokemon> pokemonsList = [
    Pokemon(name: 'Bulbasaur', id: 1, types: [
      Type(
        slot: 1,
        type: Species(name: 'grass', url: 'https://pokeapi.co/api/v2/type/12/'),
      ),
      Type(
        slot: 2,
        type: Species(name: 'poison', url: 'https://pokeapi.co/api/v2/type/4/'),
      ),
    ]),
    Pokemon(name: 'Ivysaur', id: 2, types: [
      Type(
        slot: 1,
        type: Species(name: 'grass', url: 'https://pokeapi.co/api/v2/type/12/'),
      ),
      Type(
        slot: 2,
        type: Species(name: 'poison', url: 'https://pokeapi.co/api/v2/type/4/'),
      ),
    ]),
    Pokemon(name: 'Venusaur', id: 3, types: [
      Type(
        slot: 1,
        type: Species(name: 'grass', url: 'https://pokeapi.co/api/v2/type/12/'),
      ),
      Type(
        slot: 2,
        type: Species(name: 'poison', url: 'https://pokeapi.co/api/v2/type/4/'),
      ),
    ]),
    Pokemon(name: 'Charmander', id: 4, types: [
      Type(
        slot: 1,
        type: Species(name: 'fire', url: 'https://pokeapi.co/api/v2/type/10/'),
      ),
    ]),
    Pokemon(name: 'Charmeleon', id: 5, types: [
      Type(
        slot: 1,
        type: Species(name: 'fire', url: 'https://pokeapi.co/api/v2/type/10/'),
      ),
    ]),
    Pokemon(name: 'Charizard', id: 6, types: [
      Type(
        slot: 1,
        type: Species(name: 'fire', url: 'https://pokeapi.co/api/v2/type/10/'),
      ),
      Type(
        slot: 2,
        type: Species(name: 'flying', url: 'https://pokeapi.co/api/v2/type/3/'),
      ),
    ]),
    Pokemon(name: 'Squirtle', id: 7, types: [
      Type(
        slot: 1,
        type: Species(name: 'water', url: 'https://pokeapi.co/api/v2/type/11/'),
      ),
    ]),
    Pokemon(name: 'Wartortle', id: 8, types: [
      Type(
        slot: 1,
        type: Species(name: 'water', url: 'https://pokeapi.co/api/v2/type/11/'),
      ),
    ]),
    Pokemon(name: 'Blastoise', id: 9, types: [
      Type(
        slot: 1,
        type: Species(name: 'water', url: 'https://pokeapi.co/api/v2/type/11/'),
      ),
    ]),
    Pokemon(name: 'Beedrill', id: 15, types: [
      Type(
        slot: 1,
        type: Species(name: 'bug', url: 'https://pokeapi.co/api/v2/type/7/'),
      ),
      Type(
        slot: 2,
        type: Species(name: 'poison', url: 'https://pokeapi.co/api/v2/type/4/'),
      ),
    ]),
    Pokemon(name: 'Pikachu', id: 25, types: [
      Type(
        slot: 1,
        type: Species(
            name: 'electric', url: 'https://pokeapi.co/api/v2/type/13/'),
      ),
    ]),
    Pokemon(name: 'Clefairy', id: 25, types: [
      Type(
        slot: 1,
        type: Species(name: 'fairy', url: 'https://pokeapi.co/api/v2/type/18/'),
      ),
    ]),
    Pokemon(name: 'Dugtrio', id: 51, types: [
      Type(
        slot: 1,
        type: Species(name: 'ground', url: 'https://pokeapi.co/api/v2/type/5/'),
      ),
    ]),
    Pokemon(name: 'Onix', id: 95, types: [
      Type(
        slot: 1,
        type: Species(name: 'rock', url: 'https://pokeapi.co/api/v2/type/6/'),
      ),
      Type(
        slot: 2,
        type: Species(name: 'ground', url: 'https://pokeapi.co/api/v2/type/5/'),
      ),
    ]),
    Pokemon(name: 'Lickitung', id: 108, types: [
      Type(
        slot: 1,
        type: Species(name: 'normal', url: 'https://pokeapi.co/api/v2/type/1/'),
      ),
    ]),
    Pokemon(name: 'Koffing', id: 109, types: [
      Type(
        slot: 1,
        type: Species(name: 'poison', url: 'https://pokeapi.co/api/v2/type/4/'),
      ),
    ]),
    Pokemon(name: 'Mew', id: 151, types: [
      Type(
        slot: 1,
        type:
            Species(name: 'psychic', url: 'https://pokeapi.co/api/v2/type/14/'),
      ),
    ]),
    Pokemon(name: 'Suicune', id: 245, types: [
      Type(
        slot: 1,
        type: Species(name: 'water', url: 'https://pokeapi.co/api/v2/type/11/'),
      ),
    ]),
    Pokemon(name: 'Aggron', id: 306, types: [
      Type(
        slot: 1,
        type: Species(name: 'steel', url: 'https://pokeapi.co/api/v2/type/9/'),
      ),
      Type(
        slot: 2,
        type: Species(name: 'rock', url: 'https://pokeapi.co/api/v2/type/6/'),
      ),
    ]),
    Pokemon(name: 'Rayquaza', id: 384, types: [
      Type(
        slot: 1,
        type:
            Species(name: 'dragon', url: 'https://pokeapi.co/api/v2/type/16/'),
      ),
      Type(
        slot: 2,
        type: Species(name: 'flying', url: 'https://pokeapi.co/api/v2/type/3/'),
      ),
    ]),
    Pokemon(name: 'Lucario', id: 448, types: [
      Type(
        slot: 1,
        type:
            Species(name: 'fighting', url: 'https://pokeapi.co/api/v2/type/2/'),
      ),
      Type(
        slot: 2,
        type: Species(name: 'steel', url: 'https://pokeapi.co/api/v2/type/9/'),
      ),
    ]),
    Pokemon(name: 'Serperior', id: 497, types: [
      Type(
        slot: 1,
        type: Species(name: 'grass', url: 'https://pokeapi.co/api/v2/type/12/'),
      ),
    ]),
    Pokemon(name: 'Zoroark', id: 497, types: [
      Type(
        slot: 1,
        type: Species(name: 'dark', url: 'https://pokeapi.co/api/v2/type/17/'),
      ),
    ]),
    Pokemon(name: 'Chandelure', id: 609, types: [
      Type(
        slot: 1,
        type: Species(name: 'ghost', url: 'https://pokeapi.co/api/v2/type/8/'),
      ),
      Type(
        slot: 2,
        type: Species(name: 'fire', url: 'https://pokeapi.co/api/v2/type/10/'),
      ),
    ]),
    Pokemon(name: 'Cubchoo', id: 613, types: [
      Type(
        slot: 1,
        type: Species(name: 'ice', url: 'https://pokeapi.co/api/v2/type/15/'),
      ),
    ]),
    Pokemon(name: 'Toucannon', id: 733, types: [
      Type(
        slot: 1,
        type: Species(name: 'normal', url: 'https://pokeapi.co/api/v2/type/1/'),
      ),
      Type(
        slot: 2,
        type: Species(name: 'flying', url: 'https://pokeapi.co/api/v2/type/3/'),
      ),
    ]),
  ];

  late List<AppLanguage> languageList = [
    AppLanguage.fromJson({
      "id": 1,
      "name": "Japanese",
      "iso639": "ja",
      "iso3166": "jp",
      "identifier": "ja-Hrkt",
      "official": 1,
      "order": 1
    }),
    AppLanguage.fromJson({
      "id": 2,
      "name": "Japanese",
      "iso639": "ja",
      "iso3166": "jp",
      "identifier": "roomaji",
      "official": 1,
      "order": 3
    }),
    AppLanguage.fromJson({
      "id": 3,
      "name": "Korean",
      "iso639": "ko",
      "iso3166": "kr",
      "identifier": "ko",
      "official": 1,
      "order": 4
    }),
    AppLanguage.fromJson({
      "id": 4,
      "name": "Chinese",
      "iso639": "zh",
      "iso3166": "cn",
      "identifier": "zh-Hant",
      "official": 1,
      "order": 5
    }),
    AppLanguage.fromJson({
      "id": 5,
      "name": "French",
      "iso639": "fr",
      "iso3166": "fr",
      "identifier": "fr",
      "official": 1,
      "order": 8
    }),
    AppLanguage.fromJson({
      "id": 6,
      "name": "German",
      "iso639": "de",
      "iso3166": "de",
      "identifier": "de",
      "official": 1,
      "order": 9
    }),
    AppLanguage.fromJson({
      "id": 7,
      "name": "Spanish",
      "iso639": "es",
      "iso3166": "es",
      "identifier": "es",
      "official": 1,
      "order": 10
    }),
    AppLanguage.fromJson({
      "id": 8,
      "name": "Italian",
      "iso639": "it",
      "iso3166": "it",
      "identifier": "it",
      "official": 1,
      "order": 11
    }),
    AppLanguage.fromJson({
      "id": 9,
      "name": "English",
      "iso639": "en",
      "iso3166": "us",
      "identifier": "en",
      "official": 1,
      "order": 7
    }),
    AppLanguage.fromJson({
      "id": 10,
      "name": "Czech",
      "iso639": "cs",
      "iso3166": "cz",
      "identifier": "cs",
      "official": 0,
      "order": 12
    })
  ];
}
