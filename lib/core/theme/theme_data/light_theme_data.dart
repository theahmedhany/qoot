import 'package:flutter/material.dart';

import '../app_texts/app_fonts.dart';
import '../theme_manager/theme_extensions.dart';

ThemeData getLightTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: context.customAppColors.background,
    brightness: Brightness.light,
    fontFamily: AppFonts.cairo,
    colorScheme: ColorScheme.fromSeed(
      seedColor: context.customAppColors.primary800,
      brightness: Brightness.light,
    ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: context.customAppColors.grey900,
      displayColor: context.customAppColors.grey900,
      fontFamily: AppFonts.cairo,
    ),
  );
}
