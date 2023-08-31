import 'package:poke_book/utils/models/generation_i.dart';
import 'package:poke_book/utils/models/generation_ii.dart';
import 'package:poke_book/utils/models/generation_iii.dart';
import 'package:poke_book/utils/models/generation_iv.dart';
import 'package:poke_book/utils/models/generation_v.dart';
import 'package:poke_book/utils/models/generation_vii.dart';
import 'package:poke_book/utils/models/generation_viii.dart';
import 'package:poke_book/utils/models/home.dart';

class Versions {
  GenerationI? generationI;
  GenerationIi? generationIi;
  GenerationIii? generationIii;
  GenerationIv? generationIv;
  GenerationV? generationV;
  Map<String, Home>? generationVi;
  GenerationVii? generationVii;
  GenerationViii? generationViii;

  Versions({
    this.generationI,
    this.generationIi,
    this.generationIii,
    this.generationIv,
    this.generationV,
    this.generationVi,
    this.generationVii,
    this.generationViii,
  });

  Versions copyWith({
    GenerationI? generationI,
    GenerationIi? generationIi,
    GenerationIii? generationIii,
    GenerationIv? generationIv,
    GenerationV? generationV,
    Map<String, Home>? generationVi,
    GenerationVii? generationVii,
    GenerationViii? generationViii,
  }) =>
      Versions(
        generationI: generationI ?? this.generationI,
        generationIi: generationIi ?? this.generationIi,
        generationIii: generationIii ?? this.generationIii,
        generationIv: generationIv ?? this.generationIv,
        generationV: generationV ?? this.generationV,
        generationVi: generationVi ?? this.generationVi,
        generationVii: generationVii ?? this.generationVii,
        generationViii: generationViii ?? this.generationViii,
      );

  factory Versions.fromJson(Map<String, dynamic> json) => Versions(
        generationI: json["generation-i"] == null
            ? null
            : GenerationI.fromJson(json["generation-i"]),
        generationIi: json["generation-ii"] == null
            ? null
            : GenerationIi.fromJson(json["generation-ii"]),
        generationIii: json["generation-iii"] == null
            ? null
            : GenerationIii.fromJson(json["generation-iii"]),
        generationIv: json["generation-iv"] == null
            ? null
            : GenerationIv.fromJson(json["generation-iv"]),
        generationV: json["generation-v"] == null
            ? null
            : GenerationV.fromJson(json["generation-v"]),
        generationVi: Map.from(json["generation-vi"]!)
            .map((k, v) => MapEntry<String, Home>(k, Home.fromJson(v))),
        generationVii: json["generation-vii"] == null
            ? null
            : GenerationVii.fromJson(json["generation-vii"]),
        generationViii: json["generation-viii"] == null
            ? null
            : GenerationViii.fromJson(json["generation-viii"]),
      );

  Map<String, dynamic> toJson() => {
        "generation-i": generationI?.toJson(),
        "generation-ii": generationIi?.toJson(),
        "generation-iii": generationIii?.toJson(),
        "generation-iv": generationIv?.toJson(),
        "generation-v": generationV?.toJson(),
        "generation-vi": Map.from(generationVi!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "generation-vii": generationVii?.toJson(),
        "generation-viii": generationViii?.toJson(),
      };
}
