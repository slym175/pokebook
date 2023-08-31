class MainGeneration {
  String name;
  String url;

  MainGeneration({
    required this.name,
    required this.url,
  });

  MainGeneration copyWith({
    required String name,
    required String url,
  }) =>
      MainGeneration(
        name: name,
        url: url,
      );

  factory MainGeneration.fromJson(Map<String, dynamic> json) => MainGeneration(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
