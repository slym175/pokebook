import 'package:poke_book/utils/models/crystal.dart';
import 'package:poke_book/utils/models/gold.dart';

class GenerationIi {
  Crystal? crystal;
  Gold? gold;
  Gold? silver;

  GenerationIi({
    this.crystal,
    this.gold,
    this.silver,
  });

  GenerationIi copyWith({
    Crystal? crystal,
    Gold? gold,
    Gold? silver,
  }) =>
      GenerationIi(
        crystal: crystal ?? this.crystal,
        gold: gold ?? this.gold,
        silver: silver ?? this.silver,
      );

  factory GenerationIi.fromJson(Map<String, dynamic> json) => GenerationIi(
        crystal:
            json["crystal"] == null ? null : Crystal.fromJson(json["crystal"]),
        gold: json["gold"] == null ? null : Gold.fromJson(json["gold"]),
        silver: json["silver"] == null ? null : Gold.fromJson(json["silver"]),
      );

  Map<String, dynamic> toJson() => {
        "crystal": crystal?.toJson(),
        "gold": gold?.toJson(),
        "silver": silver?.toJson(),
      };
}
