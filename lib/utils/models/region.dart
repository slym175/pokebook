import 'dart:convert';

import 'package:poke_book/utils/models/main_generation.dart';
import 'package:poke_book/utils/models/region_name.dart';

Region regionFromJson(String str) => Region.fromJson(json.decode(str));

String regionToJson(Region data) => json.encode(data.toJson());

class Region {
  int id;
  String name;
  List<MainGeneration>? locations;
  MainGeneration mainGeneration;
  List<Name> names;
  List<MainGeneration>? pokedexes;
  List<MainGeneration>? versionGroups;

  Region({
    required this.id,
    required this.name,
    this.locations,
    required this.mainGeneration,
    required this.names,
    this.pokedexes,
    this.versionGroups,
  });

  Region copyWith({
    required int id,
    required String name,
    List<MainGeneration>? locations,
    required MainGeneration mainGeneration,
    List<Name>? names,
    List<MainGeneration>? pokedexes,
    List<MainGeneration>? versionGroups,
  }) =>
      Region(
        id: id,
        name: name,
        locations: locations ?? this.locations,
        mainGeneration: mainGeneration,
        names: names ?? this.names,
        pokedexes: pokedexes ?? this.pokedexes,
        versionGroups: versionGroups ?? this.versionGroups,
      );

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        id: json["id"],
        name: json["name"],
        locations: json["locations"] == null
            ? []
            : List<MainGeneration>.from(
                json["locations"]!.map((x) => MainGeneration.fromJson(x))),
        mainGeneration: MainGeneration.fromJson(json["main_generation"]),
        names: json["names"] == null
            ? []
            : List<Name>.from(json["names"]!.map((x) => Name.fromJson(x))),
        pokedexes: json["pokedexes"] == null
            ? []
            : List<MainGeneration>.from(
                json["pokedexes"]!.map((x) => MainGeneration.fromJson(x))),
        versionGroups: json["version_groups"] == null
            ? []
            : List<MainGeneration>.from(
                json["version_groups"]!.map((x) => MainGeneration.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "locations": locations == null
            ? []
            : List<dynamic>.from(locations!.map((x) => x.toJson())),
        "main_generation": mainGeneration.toJson(),
        "names": List<dynamic>.from(names.map((x) => x.toJson())),
        "pokedexes": pokedexes == null
            ? []
            : List<dynamic>.from(pokedexes!.map((x) => x.toJson())),
        "version_groups": versionGroups == null
            ? []
            : List<dynamic>.from(versionGroups!.map((x) => x.toJson())),
      };
}
