import 'package:poke_book/utils/models/main_generation.dart';

class Name {
  String name;
  MainGeneration? language;

  Name({
    required this.name,
    this.language,
  });

  Name copyWith({
    required String name,
    MainGeneration? language,
  }) =>
      Name(
        name: name,
        language: language ?? this.language,
      );

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        name: json["name"],
        language: json["language"] == null
            ? null
            : MainGeneration.fromJson(json["language"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "language": language?.toJson(),
      };
}
