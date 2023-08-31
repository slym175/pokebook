import 'dart:convert';

import 'package:poke_book/utils/models/ability.dart';
import 'package:poke_book/utils/models/game_index.dart';
import 'package:poke_book/utils/models/move.dart';
import 'package:poke_book/utils/models/species.dart';
import 'package:poke_book/utils/models/sprites.dart';
import 'package:poke_book/utils/models/stat.dart';
import 'package:poke_book/utils/models/type.dart';

Pokemon pokemonFromJson(String str) => Pokemon.fromJson(json.decode(str));

String pokemonToJson(Pokemon data) => json.encode(data.toJson());

class Pokemon {
  List<Ability>? abilities;
  int? baseExperience;
  List<Species>? forms;
  List<GameIndex>? gameIndices;
  int? height;
  List<dynamic>? heldItems;
  int id;
  bool? isDefault;
  String? locationAreaEncounters;
  List<Move>? moves;
  String name;
  int? order;
  List<dynamic>? pastTypes;
  Species? species;
  Sprites? sprites;
  List<Stat>? stats;
  List<Type> types;
  int? weight;

  Pokemon({
    this.abilities,
    this.baseExperience,
    this.forms,
    this.gameIndices,
    this.height,
    this.heldItems,
    required this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.moves,
    required this.name,
    this.order,
    this.pastTypes,
    this.species,
    this.sprites,
    this.stats,
    required this.types,
    this.weight,
  });

  Pokemon copyWith({
    List<Ability>? abilities,
    int? baseExperience,
    List<Species>? forms,
    List<GameIndex>? gameIndices,
    int? height,
    List<dynamic>? heldItems,
    required int id,
    bool? isDefault,
    String? locationAreaEncounters,
    List<Move>? moves,
    required String name,
    int? order,
    List<dynamic>? pastTypes,
    Species? species,
    Sprites? sprites,
    List<Stat>? stats,
    required List<Type> types,
    int? weight,
  }) =>
      Pokemon(
        abilities: abilities ?? this.abilities,
        baseExperience: baseExperience ?? this.baseExperience,
        forms: forms ?? this.forms,
        gameIndices: gameIndices ?? this.gameIndices,
        height: height ?? this.height,
        heldItems: heldItems ?? this.heldItems,
        id: id,
        isDefault: isDefault ?? this.isDefault,
        locationAreaEncounters:
            locationAreaEncounters ?? this.locationAreaEncounters,
        moves: moves ?? this.moves,
        name: name,
        order: order ?? this.order,
        pastTypes: pastTypes ?? this.pastTypes,
        species: species ?? this.species,
        sprites: sprites ?? this.sprites,
        stats: stats ?? this.stats,
        types: types,
        weight: weight ?? this.weight,
      );

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        abilities: json["abilities"] == null
            ? []
            : List<Ability>.from(
                json["abilities"]!.map((x) => Ability.fromJson(x))),
        baseExperience: json["base_experience"],
        forms: json["forms"] == null
            ? []
            : List<Species>.from(
                json["forms"]!.map((x) => Species.fromJson(x))),
        gameIndices: json["game_indices"] == null
            ? []
            : List<GameIndex>.from(
                json["game_indices"]!.map((x) => GameIndex.fromJson(x))),
        height: json["height"],
        heldItems: json["held_items"] == null
            ? []
            : List<dynamic>.from(json["held_items"]!.map((x) => x)),
        id: json["id"],
        isDefault: json["is_default"],
        locationAreaEncounters: json["location_area_encounters"],
        moves: json["moves"] == null
            ? []
            : List<Move>.from(json["moves"]!.map((x) => Move.fromJson(x))),
        name: json["name"],
        order: json["order"],
        pastTypes: json["past_types"] == null
            ? []
            : List<dynamic>.from(json["past_types"]!.map((x) => x)),
        species:
            json["species"] == null ? null : Species.fromJson(json["species"]),
        sprites:
            json["sprites"] == null ? null : Sprites.fromJson(json["sprites"]),
        stats: json["stats"] == null
            ? []
            : List<Stat>.from(json["stats"]!.map((x) => Stat.fromJson(x))),
        types: json["types"] == null
            ? []
            : List<Type>.from(json["types"]!.map((x) => Type.fromJson(x))),
        weight: json["weight"],
      );

  Map<String, dynamic> toJson() => {
        "abilities": abilities == null
            ? []
            : List<dynamic>.from(abilities!.map((x) => x.toJson())),
        "base_experience": baseExperience,
        "forms": forms == null
            ? []
            : List<dynamic>.from(forms!.map((x) => x.toJson())),
        "game_indices": gameIndices == null
            ? []
            : List<dynamic>.from(gameIndices!.map((x) => x.toJson())),
        "height": height,
        "held_items": heldItems == null
            ? []
            : List<dynamic>.from(heldItems!.map((x) => x)),
        "id": id,
        "is_default": isDefault,
        "location_area_encounters": locationAreaEncounters,
        "moves": moves == null
            ? []
            : List<dynamic>.from(moves!.map((x) => x.toJson())),
        "name": name,
        "order": order,
        "past_types": pastTypes == null
            ? []
            : List<dynamic>.from(pastTypes!.map((x) => x)),
        "species": species?.toJson(),
        "sprites": sprites?.toJson(),
        "stats": stats == null
            ? []
            : List<dynamic>.from(stats!.map((x) => x.toJson())),
        "types": List<dynamic>.from(types.map((x) => x.toJson())),
        "weight": weight,
      };
}
