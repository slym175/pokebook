import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/helper.dart';
import 'package:poke_book/utils/models/type.dart';

class PokemonTypeBadge extends StatelessWidget {
  const PokemonTypeBadge({Key? key, required this.pokemonType})
      : super(key: key);

  final Type pokemonType;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 28.0,
        decoration: BoxDecoration(
          color: AppColors().getProp("${pokemonType.type!.name}BadgeBg") ??
              AppColors.textFilter,
          borderRadius: const BorderRadius.all(
            Radius.circular(14.0),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(4.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(24.0),
            ),
            color: Color.fromARGB(60, 0, 0, 0),
          ),
          child: Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(4.0),
                margin: const EdgeInsets.only(right: 6.0),
                width: 20.0,
                height: 20.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: ImageIcon(
                  AssetImage(
                    'assets/images/types/${pokemonType.type!.name}.png',
                  ),
                  color:
                      AppColors().getProp("${pokemonType.type!.name}BadgeBg"),
                  size: 12.0,
                ),
              ),
              Text(
                AppHelper().capitalize(pokemonType.type!.name),
                style: const TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 8.0)
            ],
          ),
        ),
      ),
    );
  }
}
