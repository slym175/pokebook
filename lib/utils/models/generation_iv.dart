import 'package:poke_book/utils/models/sprites.dart';

class GenerationIv {
  Sprites? diamondPearl;
  Sprites? heartgoldSoulsilver;
  Sprites? platinum;

  GenerationIv({
    this.diamondPearl,
    this.heartgoldSoulsilver,
    this.platinum,
  });

  GenerationIv copyWith({
    Sprites? diamondPearl,
    Sprites? heartgoldSoulsilver,
    Sprites? platinum,
  }) =>
      GenerationIv(
        diamondPearl: diamondPearl ?? this.diamondPearl,
        heartgoldSoulsilver: heartgoldSoulsilver ?? this.heartgoldSoulsilver,
        platinum: platinum ?? this.platinum,
      );

  factory GenerationIv.fromJson(Map<String, dynamic> json) => GenerationIv(
        diamondPearl: json["diamond-pearl"] == null
            ? null
            : Sprites.fromJson(json["diamond-pearl"]),
        heartgoldSoulsilver: json["heartgold-soulsilver"] == null
            ? null
            : Sprites.fromJson(json["heartgold-soulsilver"]),
        platinum: json["platinum"] == null
            ? null
            : Sprites.fromJson(json["platinum"]),
      );

  Map<String, dynamic> toJson() => {
        "diamond-pearl": diamondPearl?.toJson(),
        "heartgold-soulsilver": heartgoldSoulsilver?.toJson(),
        "platinum": platinum?.toJson(),
      };
}
