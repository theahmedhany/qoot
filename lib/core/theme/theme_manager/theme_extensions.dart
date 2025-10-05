import 'package:flutter/material.dart';

import '../app_colors/custom_app_colors.dart';

extension CustomAppColorsExtension on ThemeData {
  CustomAppColors get customAppColors {
    if (brightness == Brightness.dark) return CustomAppColors.dark();
    return CustomAppColors.light();
  }
}

extension ContextExt on BuildContext {
  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }

  CustomAppColors get customAppColors {
    return Theme.of(this).customAppColors;
  }
}
