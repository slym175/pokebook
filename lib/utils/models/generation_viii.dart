import 'package:poke_book/utils/models/dream_world.dart';

class GenerationViii {
  DreamWorld? icons;

  GenerationViii({
    this.icons,
  });

  GenerationViii copyWith({
    DreamWorld? icons,
  }) =>
      GenerationViii(
        icons: icons ?? this.icons,
      );

  factory GenerationViii.fromJson(Map<String, dynamic> json) => GenerationViii(
        icons:
            json["icons"] == null ? null : DreamWorld.fromJson(json["icons"]),
      );

  Map<String, dynamic> toJson() => {
        "icons": icons?.toJson(),
      };
}
