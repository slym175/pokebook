import 'package:flutter/material.dart';
import 'package:poke_book/utils/constants/colors.dart';

class AppBorders {
  static final OutlineInputBorder _enabledBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.textHint,
    ),
    borderRadius: BorderRadius.circular(5.0),
  );

  static final OutlineInputBorder _focusedBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.textBlack,
    ),
    borderRadius: BorderRadius.circular(5.0),
  );

  static final OutlineInputBorder _errorBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.textError,
    ),
    borderRadius: BorderRadius.circular(5.0),
  );

  static const BorderRadius bottomSheetBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(15.0),
    topRight: Radius.circular(15.0),
  );

  OutlineInputBorder enabledBorder({bool isSearch = false}) =>
      _enabledBorder.copyWith(
          borderRadius: isSearch
              ? BorderRadius.circular(50.0)
              : BorderRadius.circular(5.0));

  OutlineInputBorder focusedBorder({bool isSearch = false}) =>
      _focusedBorder.copyWith(
          borderRadius: isSearch
              ? BorderRadius.circular(50.0)
              : BorderRadius.circular(5.0));

  OutlineInputBorder errorBorder({bool isSearch = false}) =>
      _errorBorder.copyWith(
          borderRadius: isSearch
              ? BorderRadius.circular(50.0)
              : BorderRadius.circular(5.0));
}
