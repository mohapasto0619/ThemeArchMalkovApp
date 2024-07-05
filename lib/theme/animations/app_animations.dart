import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_animations.freezed.dart';

/// The AppAnimationTheme of the app.
/// It will be created directly here.
final animationThemeProvider = Provider<AppAnimationTheme>((ref) {
  return AppAnimationTheme.normal();
});

@freezed
class AppAnimationTheme with _$AppAnimationTheme {
  const factory AppAnimationTheme({
    required Duration zero,
    required Duration veryFast,
    required Duration fast,
    required Duration normal,
    required Duration slow,
    required Duration verySlow,
    required Duration second,
    required Duration couple,
    required Duration pageTransition,
  }) = _AppAnimationTheme;

  /// The default animation theme.
  factory AppAnimationTheme.normal() => const AppAnimationTheme(
        zero: Duration.zero,
        veryFast: Duration(milliseconds: 100),
        fast: Duration(milliseconds: 200),
        normal: Duration(milliseconds: 300),
        slow: Duration(milliseconds: 400),
        verySlow: Duration(milliseconds: 500),
        second: Duration(seconds: 1),
        couple: Duration(seconds: 2),
        pageTransition: Duration(seconds: 5),
      );
}
