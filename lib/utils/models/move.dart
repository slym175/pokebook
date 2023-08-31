import 'dart:convert';

import 'package:poke_book/utils/models/move_class.dart';
import 'package:poke_book/utils/models/version_group_detail.dart';

Move moveFromJson(String str) => Move.fromJson(json.decode(str));

String moveToJson(Move data) => json.encode(data.toJson());

class Move {
  MoveClass? move;
  List<VersionGroupDetail>? versionGroupDetails;

  Move({
    this.move,
    this.versionGroupDetails,
  });

  Move copyWith({
    MoveClass? move,
    List<VersionGroupDetail>? versionGroupDetails,
  }) =>
      Move(
        move: move ?? this.move,
        versionGroupDetails: versionGroupDetails ?? this.versionGroupDetails,
      );

  factory Move.fromJson(Map<String, dynamic> json) => Move(
        move: json["move"] == null ? null : MoveClass.fromJson(json["move"]),
        versionGroupDetails: json["version_group_details"] == null
            ? []
            : List<VersionGroupDetail>.from(json["version_group_details"]!
                .map((x) => VersionGroupDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "move": move?.toJson(),
        "version_group_details": versionGroupDetails == null
            ? []
            : List<dynamic>.from(versionGroupDetails!.map((x) => x.toJson())),
      };
}
