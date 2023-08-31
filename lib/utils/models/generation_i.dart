import 'package:poke_book/utils/models/red_blue.dart';

class GenerationI {
  RedBlue? redBlue;
  RedBlue? yellow;

  GenerationI({
    this.redBlue,
    this.yellow,
  });

  GenerationI copyWith({
    RedBlue? redBlue,
    RedBlue? yellow,
  }) =>
      GenerationI(
        redBlue: redBlue ?? this.redBlue,
        yellow: yellow ?? this.yellow,
      );

  factory GenerationI.fromJson(Map<String, dynamic> json) => GenerationI(
        redBlue: json["red-blue"] == null
            ? null
            : RedBlue.fromJson(json["red-blue"]),
        yellow:
            json["yellow"] == null ? null : RedBlue.fromJson(json["yellow"]),
      );

  Map<String, dynamic> toJson() => {
        "red-blue": redBlue?.toJson(),
        "yellow": yellow?.toJson(),
      };
}
