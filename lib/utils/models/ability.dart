import 'package:poke_book/utils/models/species.dart';

class Ability {
  Species? ability;
  bool? isHidden;
  int? slot;

  Ability({
    this.ability,
    this.isHidden,
    this.slot,
  });

  Ability copyWith({
    Species? ability,
    bool? isHidden,
    int? slot,
  }) =>
      Ability(
        ability: ability ?? this.ability,
        isHidden: isHidden ?? this.isHidden,
        slot: slot ?? this.slot,
      );

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        ability:
            json["ability"] == null ? null : Species.fromJson(json["ability"]),
        isHidden: json["is_hidden"],
        slot: json["slot"],
      );

  Map<String, dynamic> toJson() => {
        "ability": ability?.toJson(),
        "is_hidden": isHidden,
        "slot": slot,
      };
}
