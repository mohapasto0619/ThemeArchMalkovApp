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
  }) = _AppColorTheme;

  factory AppColorTheme.light() => const AppColorTheme(
        primary: Color(0xFFfb8500),
        background: Color(0xFFf1faee),
      );

  factory AppColorTheme.dark() => const AppColorTheme(
        primary: Color(0xFF8ecae6),
        background: Color(0xFF023047),
      );
}

AppColorTheme handleTheme(
  BuildContext context,
) {
  final brightness = MediaQuery.platformBrightnessOf(context);
  final isDarkMode = brightness == Brightness.dark;
  return isDarkMode ? AppColorTheme.dark() : AppColorTheme.light();
}
