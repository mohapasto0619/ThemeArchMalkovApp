import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_padding.freezed.dart';

/// The AppRadiusTheme of the app.
/// It will be created directly here.
final paddingThemeProvider = Provider<AppPaddingTheme>(
  (ref) => AppPaddingTheme.compact(),
);

@freezed
class AppPaddingTheme with _$AppPaddingTheme {
  const factory AppPaddingTheme({
    required double none,
    required double xxs,
    required double xs,
    required double sm,
    required double base,
    required double lg,
    required double xl,
  }) = _AppPaddingTheme;

  factory AppPaddingTheme.compact() => const AppPaddingTheme(
        none: 0,
        xxs: 2,
        xs: 4,
        sm: 8,
        base: 16,
        lg: 24,
        xl: 32,
      );

  factory AppPaddingTheme.medium() => const AppPaddingTheme(
        none: 0,
        xxs: 8,
        xs: 16,
        sm: 32,
        base: 64,
        lg: 128,
        xl: 256,
      );

  factory AppPaddingTheme.expanded() => const AppPaddingTheme(
        none: 0,
        xxs: 16,
        xs: 32,
        sm: 64,
        base: 128,
        lg: 256,
        xl: 512,
      );
}
