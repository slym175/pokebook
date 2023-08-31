import 'package:poke_book/utils/models/sprites.dart';

class GenerationV {
  Sprites? blackWhite;

  GenerationV({
    this.blackWhite,
  });

  GenerationV copyWith({
    Sprites? blackWhite,
  }) =>
      GenerationV(
        blackWhite: blackWhite ?? this.blackWhite,
      );

  factory GenerationV.fromJson(Map<String, dynamic> json) => GenerationV(
        blackWhite: json["black-white"] == null
            ? null
            : Sprites.fromJson(json["black-white"]),
      );

  Map<String, dynamic> toJson() => {
        "black-white": blackWhite?.toJson(),
      };
}
