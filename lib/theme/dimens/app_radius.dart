import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_radius.freezed.dart';

/// The AppRadiusTheme of the app.
/// It will be created directly here.
final radiusThemeProvider = Provider<AppRadiusTheme>(
  (ref) => AppRadiusTheme.regular(),
);

@freezed
class AppRadiusTheme with _$AppRadiusTheme {
  const factory AppRadiusTheme({
    required double none,
    required double sm,
    required double base,
    required double lg,
    required double xl,
    required double xxl,
  }) = _AppRadiusTheme;

  factory AppRadiusTheme.regular() => const AppRadiusTheme(
        none: 0,
        sm: 5,
        base: 10,
        lg: 20,
        xl: 24,
        xxl: 34,
      );
}
