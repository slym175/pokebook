import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/colors.dart';

class AppTextStyles {
  AppTextStyles();

  static const TextStyle _labelStyles = TextStyle(
    color: AppColors.textBlack,
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
  );

  TextStyle get labelStyles => _labelStyles;
}
