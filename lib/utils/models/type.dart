import 'package:poke_book/utils/models/species.dart';

class Type {
  int? slot;
  Species? type;

  Type({
    this.slot,
    this.type,
  });

  Type copyWith({
    int? slot,
    Species? type,
  }) =>
      Type(
        slot: slot ?? this.slot,
        type: type ?? this.type,
      );

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        slot: json["slot"],
        type: json["type"] == null ? null : Species.fromJson(json["type"]),
      );

  Map<String, dynamic> toJson() => {
        "slot": slot,
        "type": type?.toJson(),
      };
}
