class MoveClass {
  String? name;
  String? url;

  MoveClass({
    this.name,
    this.url,
  });

  MoveClass copyWith({
    String? name,
    String? url,
  }) =>
      MoveClass(
        name: name ?? this.name,
        url: url ?? this.url,
      );

  factory MoveClass.fromJson(Map<String, dynamic> json) => MoveClass(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
