import 'package:poke_book/utils/models/dream_world.dart';
import 'package:poke_book/utils/models/home.dart';

class GenerationVii {
  DreamWorld? icons;
  Home? ultraSunUltraMoon;

  GenerationVii({
    this.icons,
    this.ultraSunUltraMoon,
  });

  GenerationVii copyWith({
    DreamWorld? icons,
    Home? ultraSunUltraMoon,
  }) =>
      GenerationVii(
        icons: icons ?? this.icons,
        ultraSunUltraMoon: ultraSunUltraMoon ?? this.ultraSunUltraMoon,
      );

  factory GenerationVii.fromJson(Map<String, dynamic> json) => GenerationVii(
        icons:
            json["icons"] == null ? null : DreamWorld.fromJson(json["icons"]),
        ultraSunUltraMoon: json["ultra-sun-ultra-moon"] == null
            ? null
            : Home.fromJson(json["ultra-sun-ultra-moon"]),
      );

  Map<String, dynamic> toJson() => {
        "icons": icons?.toJson(),
        "ultra-sun-ultra-moon": ultraSunUltraMoon?.toJson(),
      };
}
