import 'package:flutter/material.dart';

class DarkAppColors {
  // ---------- Primary Palette ----------
  static const Color primary900 = Color(0xFF022711);
  static const Color primary800 = Color(0xFF077734);
  static const Color primary700 = Color(0xFF0AAE4B);
  static const Color primary600 = Color(0xFF3EC474);
  static const Color primary500 = Color(0xFF0CD45C);
  static const Color primary400 = Color(0xFF18F26F);
  static const Color primary300 = Color(0xFFE7FEF0);

  // ---------- Grey Scale ----------
  static const Color grey900 = Color(0xFFFFFFFF);
  static const Color grey800 = Color(0xFFFAFAFA);
  static const Color grey700 = Color(0xFFEEEEEE);
  static const Color grey600 = Color(0xFFE0E0E0);
  static const Color grey500 = Color(0xFFBDBDBD);
  static const Color grey400 = Color(0xFF9E9E9E);
  static const Color grey300 = Color(0xFF757575);
  static const Color grey200 = Color(0xFF616161);
  static const Color grey100 = Color(0xFF424242);
  static const Color grey50 = Color(0xFF212121);
  static const Color grey0 = Color(0xFF000000);

  // ---------- Neutral ----------
  static const Color background = Color(0xFF121212);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  static const Color neutral800 = Color(0xFFE5E5E5);
  static const Color neutral700 = Color(0xFF4D4D4D);
  static const Color neutral300 = Color(0xFFA1A1A1);

  // ---------- Status ----------
  static const Color error900 = Color(0xFF93000A);
  static const Color error700 = Color(0xFFDF1C41);
  static const Color error500 = Color(0xFFEF4444);

  static const Color warning500 = Color(0xFFF59E0B);

  static const Color info900 = Color(0xFF1E40AF);
  static const Color info700 = Color(0xFF2563EB);

  static const Color info500 = Color(0xFF6B21A8);
  static const Color info300 = Color(0xFF8B5CF6);

  static const Color accent700 = Color(0xFFEA580C);
  static const Color accent600 = Color(0xFF4B5563);
  static const Color accent300 = Color(0xFFE5E7EB);

  // ---------- Gradients ----------
  static const List<Color> greenGradient = [
    Color(0xFF16A34A),
    Color(0xFF10B981),
  ];

  static const List<Color> orangeGradient = [
    Color(0xFFEA580C),
    Color(0xFFF59E0B),
  ];

  static const List<Color> yellowGradient = [
    Color(0xFFEAB308),
    Color(0xFFFCD34D),
  ];
  static List<Color> greenYellowGradient = [
    const Color(0xFF10B981).withValues(alpha: .1),
    const Color(0xFFF59E0B).withValues(alpha: .1),
  ];
}
