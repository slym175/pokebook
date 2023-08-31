import 'package:poke_book/utils/models/move_class.dart';

class VersionGroupDetail {
  int? levelLearnedAt;
  MoveClass? moveLearnMethod;
  MoveClass? versionGroup;

  VersionGroupDetail({
    this.levelLearnedAt,
    this.moveLearnMethod,
    this.versionGroup,
  });

  VersionGroupDetail copyWith({
    int? levelLearnedAt,
    MoveClass? moveLearnMethod,
    MoveClass? versionGroup,
  }) =>
      VersionGroupDetail(
        levelLearnedAt: levelLearnedAt ?? this.levelLearnedAt,
        moveLearnMethod: moveLearnMethod ?? this.moveLearnMethod,
        versionGroup: versionGroup ?? this.versionGroup,
      );

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      VersionGroupDetail(
        levelLearnedAt: json["level_learned_at"],
        moveLearnMethod: json["move_learn_method"] == null
            ? null
            : MoveClass.fromJson(json["move_learn_method"]),
        versionGroup: json["version_group"] == null
            ? null
            : MoveClass.fromJson(json["version_group"]),
      );

  Map<String, dynamic> toJson() => {
        "level_learned_at": levelLearnedAt,
        "move_learn_method": moveLearnMethod?.toJson(),
        "version_group": versionGroup?.toJson(),
      };
}
