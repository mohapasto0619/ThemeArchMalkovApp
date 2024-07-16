import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_colors.freezed.dart';

//No manage dark theme in this version
final appColorThemeProvider = Provider<AppColorTheme>((ref) {
  return AppColorTheme.light();
});

/// Colors used in the app.
@freezed
class AppColorTheme with _$AppColorTheme {
  const factory AppColorTheme({
    required Color primary,
    required Color background,
    required Color buttonText,
  }) = _AppColorTheme;

  factory AppColorTheme.light() => const AppColorTheme(
        primary: Color(0xFFfb8500),
        background: Color(0xFFf1faee),
        buttonText: Color(0xFFFFFFFF),
      );

  factory AppColorTheme.dark() => const AppColorTheme(
        primary: Color(0xFF8ecae6),
        background: Color(0xFF023047),
        buttonText: Color(0xFF020202),
      );
}

extension BuildContextExt on BuildContext {
  AppColorTheme get handleThemeColor {
    final brightness = MediaQuery.platformBrightnessOf(this);
    final isDarkMode = brightness == Brightness.dark;
    return isDarkMode ? AppColorTheme.dark() : AppColorTheme.light();
  }
}
