import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/helper.dart';
import 'package:poke_book/utils/models/pokemon.dart';
import 'package:poke_book/widgets/home/pokemon_type_badge.dart';

class PokemonCart extends StatefulWidget {
  const PokemonCart({
    Key? key,
    required this.itemWidth,
    required this.pokemon,
    required this.canDelete,
  }) : super(key: key);

  final double itemWidth;
  final bool canDelete;
  final Pokemon pokemon;

  @override
  State<PokemonCart> createState() => _PokemonCartState();
}

class _PokemonCartState extends State<PokemonCart> {
  bool sliding = false;

  @override
  void initState() {
    super.initState();
    sliding = false;
  }

  void disfavour(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    double width = widget.itemWidth;
    double height = widget.itemWidth / 3.215685;
    double imageWidth = height * 1.23529;
    double contentWidth = widget.itemWidth - imageWidth - 32.0;

    return Stack(children: [
      sliding
          ? Positioned.fill(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration:
                          const BoxDecoration(color: AppColors.textError),
                    ),
                  ),
                ],
              ),
            )
          : const SizedBox(),
      Slidable(
        key: UniqueKey(),
        enabled: widget.canDelete,
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.3,
          children: [
            SlidableAction(
              flex: 1,
              onPressed: disfavour,
              backgroundColor: AppColors.textError,
              foregroundColor: Colors.white,
              icon: TablerIcons.trash,
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color:
                AppColors().getProp("${widget.pokemon.types[0].type!.name}Bg"),
          ),
          width: width,
          height: height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                  width: contentWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        AppHelper().toOrdinalNumber(widget.pokemon.id),
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        widget.pokemon.name,
                        style: const TextStyle(
                          fontSize: 21.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      SizedBox(
                        width: contentWidth,
                        height: 30.0,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int typeIndex) =>
                              PokemonTypeBadge(
                            pokemonType: widget.pokemon.types[typeIndex],
                          ),
                          separatorBuilder:
                              (BuildContext context, int typeIndex) =>
                                  const SizedBox(width: 4.0),
                          itemCount: widget.pokemon.types.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: imageWidth,
                height: height,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: imageWidth,
                      height: height,
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/types/bg_${widget.pokemon.types[0].type!.name}.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: height,
                      height: height,
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/pokemons/${widget.pokemon.name.toLowerCase()}.png',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 6.0,
                      top: 6.0,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 32.0,
                          width: 32.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black38,
                            border: Border.all(color: Colors.white, width: 2.0),
                          ),
                          child: const Icon(
                            TablerIcons.heart,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
