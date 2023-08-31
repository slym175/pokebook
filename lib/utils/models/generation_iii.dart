import 'package:poke_book/utils/models/gold.dart';
import 'package:poke_book/utils/models/official_artwork.dart';

class GenerationIii {
  OfficialArtwork? emerald;
  Gold? fireredLeafgreen;
  Gold? rubySapphire;

  GenerationIii({
    this.emerald,
    this.fireredLeafgreen,
    this.rubySapphire,
  });

  GenerationIii copyWith({
    OfficialArtwork? emerald,
    Gold? fireredLeafgreen,
    Gold? rubySapphire,
  }) =>
      GenerationIii(
        emerald: emerald ?? this.emerald,
        fireredLeafgreen: fireredLeafgreen ?? this.fireredLeafgreen,
        rubySapphire: rubySapphire ?? this.rubySapphire,
      );

  factory GenerationIii.fromJson(Map<String, dynamic> json) => GenerationIii(
        emerald: json["emerald"] == null
            ? null
            : OfficialArtwork.fromJson(json["emerald"]),
        fireredLeafgreen: json["firered-leafgreen"] == null
            ? null
            : Gold.fromJson(json["firered-leafgreen"]),
        rubySapphire: json["ruby-sapphire"] == null
            ? null
            : Gold.fromJson(json["ruby-sapphire"]),
      );

  Map<String, dynamic> toJson() => {
        "emerald": emerald?.toJson(),
        "firered-leafgreen": fireredLeafgreen?.toJson(),
        "ruby-sapphire": rubySapphire?.toJson(),
      };
}
