import 'package:flutter/material.dart';

import '../app_texts/app_fonts.dart';
import '../theme_manager/theme_extensions.dart';

ThemeData getDarkTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: context.customAppColors.background,
    brightness: Brightness.dark,
    fontFamily: AppFonts.cairo,
    colorScheme: ColorScheme.fromSeed(
      seedColor: context.customAppColors.primary800,
      brightness: Brightness.dark,
    ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: context.customAppColors.grey0,
      displayColor: context.customAppColors.grey0,
      fontFamily: AppFonts.cairo,
    ),
  );
}
