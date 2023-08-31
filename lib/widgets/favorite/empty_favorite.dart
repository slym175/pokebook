import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';

class EmptyFavorite extends StatelessWidget {
  const EmptyFavorite({Key? key, required this.contentHeight})
      : super(key: key);

  final double contentHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: contentHeight,
      padding: const EdgeInsets.all(AppSizes.pageHorizontalMargin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/magikarp_blur.png'),
          const SizedBox(height: AppSizes.pageHorizontalMargin),
          const Text(
            'You didn\'t favorite any Pokemon :(',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.textFilter,
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Clique no ícone de coração dos seus pokémons favoritos e eles aparecerão aqui.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
