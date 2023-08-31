import 'package:flutter/material.dart';

class AppColors {
  AppColors();

  dynamic getProp(String key) {
    key = key == 'all kindsBadgeBg' ? 'textFilter' : key;
    return <String, dynamic>{
      'textFilter': textFilter,
      'grassBg': grassBg,
      'fireBg': fireBg,
      'waterBg': waterBg,
      'flyingBg': flyingBg,
      'poisonBg': poisonBg,
      'dragonBg': dragonBg,
      'electricBg': electricBg,
      'fairyBg': fairyBg,
      'ghostBg': ghostBg,
      'iceBg': iceBg,
      'bugBg': bugBg,
      'fightingBg': fightingBg,
      'normalBg': normalBg,
      'darkBg': darkBg,
      'steelBg': steelBg,
      'rockBg': rockBg,
      'psychicBg': psychicBg,
      'groundBg': groundBg,
      'grassBadgeBg': grassBadgeBg,
      'fireBadgeBg': fireBadgeBg,
      'waterBadgeBg': waterBadgeBg,
      'flyingBadgeBg': flyingBadgeBg,
      'poisonBadgeBg': poisonBadgeBg,
      'dragonBadgeBg': dragonBadgeBg,
      'electricBadgeBg': electricBadgeBg,
      'fairyBadgeBg': fairyBadgeBg,
      'ghostBadgeBg': ghostBadgeBg,
      'iceBadgeBg': iceBadgeBg,
      'bugBadgeBg': bugBadgeBg,
      'fightingBadgeBg': fightingBadgeBg,
      'normalBadgeBg': normalBadgeBg,
      'darkBadgeBg': darkBadgeBg,
      'steelBadgeBg': steelBadgeBg,
      'rockBadgeBg': rockBadgeBg,
      'psychicBadgeBg': psychicBadgeBg,
      'groundBadgeBg': groundBadgeBg,
    }[key];
  }

  static const Color primary = Color(0xFF000029);
  static const Color btnPrimary = Color(0xFF173EA5);
  static const Color btnInactivePrimary = Color(0xFF4565B7);
  static const Color textBlack = Color(0xFF000000);
  static const Color textPrimary = Color(0xFF4D4D4D);
  static const Color textFilter = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF666666);
  static const Color textHint = Color(0xFF999999);
  static const Color textDesciprion = Color(0xFF4D4D4D);
  static const Color textDisabled = Color(0xFFE6E6E6);
  static const Color textError = Color(0xFFF30000);
  static const Color borderPrimary = Color(0xFF173EA5);
  static const Color borderSecondary = Color(0xFFDBDCDD);
  static const Color loading = Color(0xFFCD3131);

  static const Color grassBg = Color(0xFFEDF6EC);
  static const Color fireBg = Color(0xFFFCF3EB);
  static const Color waterBg = Color(0xFFEBF1F8);
  static const Color flyingBg = Color(0xFFF1F4FA);
  static const Color poisonBg = Color(0xFFF5EDF8);
  static const Color dragonBg = Color(0xFFE4EEF6);
  static const Color electricBg = Color(0xFFFBF8E9);
  static const Color fairyBg = Color(0xFFFBF1FA);
  static const Color ghostBg = Color(0xFFEBEDF4);
  static const Color iceBg = Color(0xFFF1FBF9);
  static const Color bugBg = Color(0xFFF1F6E8);
  static const Color fightingBg = Color(0xFFF8E9EE);
  static const Color normalBg = Color(0xFFF1F2F3);
  static const Color darkBg = Color(0xFFECEBED);
  static const Color steelBg = Color(0xFFECF1F3);
  static const Color rockBg = Color(0xFFF7F5F1);
  static const Color psychicBg = Color(0xFFFCEEEF);
  static const Color groundBg = Color(0xFFF9EFEA);

  static const Color grassBadgeBg = Color(0xFF63BC5A);
  static const Color fireBadgeBg = Color(0xFFFF9D55);
  static const Color waterBadgeBg = Color(0xFF5090D6);
  static const Color flyingBadgeBg = Color(0xFF89AAE3);
  static const Color poisonBadgeBg = Color(0xFFB567CE);
  static const Color dragonBadgeBg = Color(0xFF0B6DC3);
  static const Color electricBadgeBg = Color(0xFFF4D23C);
  static const Color fairyBadgeBg = Color(0xFFEC8FE6);
  static const Color ghostBadgeBg = Color(0xFF5269AD);
  static const Color iceBadgeBg = Color(0xFF73CEC0);
  static const Color bugBadgeBg = Color(0xFF91C12F);
  static const Color fightingBadgeBg = Color(0xFFCE416B);
  static const Color normalBadgeBg = Color(0xFF919AA2);
  static const Color darkBadgeBg = Color(0xFF5A5465);
  static const Color steelBadgeBg = Color(0xFF5A8EA2);
  static const Color rockBadgeBg = Color(0xFFC5B78C);
  static const Color psychicBadgeBg = Color(0xFFFA7179);
  static const Color groundBadgeBg = Color(0xFFD97845);
}
