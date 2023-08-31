import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/colors.dart';

class TitleProfileBox extends StatelessWidget {
  const TitleProfileBox({
    Key? key,
    required this.title,
    required this.marginTop,
    required this.marginBottom,
  }) : super(key: key);

  final String title;
  final double marginTop;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
        bottom: marginBottom,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
          color: AppColors.textBlack,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
