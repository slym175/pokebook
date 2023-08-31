class AppLanguage {
  int id;
  String name;
  String iso639;
  String iso3166;
  String identifier;
  int official;
  int order;

  AppLanguage({
    required this.id,
    required this.name,
    required this.iso639,
    required this.iso3166,
    required this.identifier,
    required this.official,
    required this.order,
  });

  AppLanguage copyWith({
    required int id,
    required String name,
    required String iso639,
    required String iso3166,
    required String identifier,
    required int official,
    required int order,
  }) =>
      AppLanguage(
        id: id,
        name: name,
        iso639: iso639,
        iso3166: iso3166,
        identifier: identifier,
        official: official,
        order: order,
      );

  factory AppLanguage.fromJson(Map<String, dynamic> json) => AppLanguage(
        id: json["id"],
        name: json["name"],
        iso639: json["iso639"],
        iso3166: json["iso3166"],
        identifier: json["identifier"],
        official: json["official"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "iso639": iso639,
        "iso3166": iso3166,
        "identifier": identifier,
        "official": official,
        "order": order,
      };
}
