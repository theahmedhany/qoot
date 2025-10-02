import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../helpers/shared_pref_helper.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  static const String _themeKey = 'app_theme_mode';

  ThemeCubit() : super(ThemeMode.light) {
    _loadSavedTheme();
  }

  // Load the saved theme from SharedPreferences
  void _loadSavedTheme() {
    final savedThemeIndex = SharedPrefHelper.getInt(key: _themeKey);
    if (savedThemeIndex != null && savedThemeIndex != 0) {
      final themeMode = ThemeMode.values[savedThemeIndex];
      emit(themeMode);
    }
  }

  // Update theme and save to SharedPreferences
  Future<void> updateTheme(ThemeMode newMode) async {
    await SharedPrefHelper.setData(key: _themeKey, value: newMode.index);
    emit(newMode);
  }

  // Get current theme mode as string for display
  String get currentThemeName {
    switch (state) {
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
      case ThemeMode.system:
        return 'System';
    }
  }

  // Get theme icon for current mode
  IconData get currentThemeIcon {
    switch (state) {
      case ThemeMode.light:
        return Icons.light_mode;
      case ThemeMode.dark:
        return Icons.dark_mode;
      case ThemeMode.system:
        return Icons.brightness_auto;
    }
  }
}
