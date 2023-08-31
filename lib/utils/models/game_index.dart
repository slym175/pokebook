import 'package:poke_book/utils/models/species.dart';

class GameIndex {
  int? gameIndex;
  Species? version;

  GameIndex({
    this.gameIndex,
    this.version,
  });

  GameIndex copyWith({
    int? gameIndex,
    Species? version,
  }) =>
      GameIndex(
        gameIndex: gameIndex ?? this.gameIndex,
        version: version ?? this.version,
      );

  factory GameIndex.fromJson(Map<String, dynamic> json) => GameIndex(
        gameIndex: json["game_index"],
        version:
            json["version"] == null ? null : Species.fromJson(json["version"]),
      );

  Map<String, dynamic> toJson() => {
        "game_index": gameIndex,
        "version": version?.toJson(),
      };
}
