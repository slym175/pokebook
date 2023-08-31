class Species {
  String name;
  String? url;

  Species({
    required this.name,
    this.url,
  });

  Species copyWith({
    required String name,
    String? url,
  }) =>
      Species(
        name: name,
        url: url ?? this.url,
      );

  factory Species.fromJson(Map<String, dynamic> json) => Species(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
