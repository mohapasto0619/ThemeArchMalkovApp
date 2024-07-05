import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_spacing.freezed.dart';

/// The AppRadiusTheme of the app.
/// It will be created directly here.
final spacingThemeProvider = Provider<AppSpacingTheme>(
  (ref) => AppSpacingTheme.compact(),
);

@freezed
class AppSpacingTheme with _$AppSpacingTheme {
  const factory AppSpacingTheme({
    required double xxs,
    required double xs,
    required double ms,
    required double small,
    required double sm,
    required double medium,
    required double large,
    required double xl,
    required double xxl,
    required double xxxl,
    required double xxxxl,
  }) = _AppSpacingTheme;

  factory AppSpacingTheme.compact() => const AppSpacingTheme(
        xxs: 4,
        xs: 8,
        ms: 16,
        small: 24,
        sm: 32,
        medium: 40,
        large: 48,
        xl: 56,
        xxl: 64,
        xxxl: 72,
        xxxxl: 80,
      );

  factory AppSpacingTheme.medium() => const AppSpacingTheme(
        xxs: 6,
        xs: 12,
        ms: 20,
        small: 28,
        sm: 40,
        medium: 48,
        large: 54,
        xl: 64,
        xxl: 80,
        xxxl: 96,
        xxxxl: 106,
      );

  factory AppSpacingTheme.expanded() => const AppSpacingTheme(
        xxs: 8,
        xs: 16,
        ms: 32,
        small: 48,
        sm: 52,
        medium: 60,
        large: 80,
        xl: 96,
        xxl: 106,
        xxxl: 120,
        xxxxl: 140,
      );
}
