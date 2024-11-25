import 'package:banking_app/config/theme/custom_theme.dart';
import 'package:banking_app/config/theme/themes.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static final CustomTheme currentTheme = theme;
  static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);
}