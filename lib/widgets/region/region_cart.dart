import 'package:flutter/material.dart';
import 'package:poke_book/utils/models/region.dart';

class RegionCart extends StatelessWidget {
  const RegionCart({
    Key? key,
    required this.cardWidth,
    required this.cardHeight,
    required this.region,
  }) : super(key: key);

  final double cardWidth;
  final double cardHeight;
  final Region region;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      padding: const EdgeInsets.all(0.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/regions/${region.name}.png",
            fit: BoxFit.fill,
            alignment: Alignment.center,
            width: cardWidth,
            height: cardHeight,
          ),
          Positioned(
            top: 0.0,
            bottom: 0.0,
            left: 0.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0.0,
                    horizontal: 36.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        region.names[0].name,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        region.mainGeneration.name
                            .replaceAll('-', ' ')
                            .toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
