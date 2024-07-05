import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_icon_sizes.freezed.dart';

/// The AppIconSizes of the app.
/// It will be created directly here.
final appIconSizesProvider = Provider<AppIconSizes>(
  (ref) => AppIconSizes.compact(),
);

@freezed
class AppIconSizes with _$AppIconSizes {
  const factory AppIconSizes({
    required double micro,
    required double mini,
    required double tiny,
    required double small,
    required double smallMedium,
    required double medium,
    required double large,
    required double xl,
  }) = _AppIconSizes;
  const AppIconSizes._();

  factory AppIconSizes.compact() => const AppIconSizes(
        micro: 16,
        mini: 20,
        tiny: 24,
        small: 30,
        smallMedium: 36,
        medium: 38,
        large: 60,
        xl: 80,
      );

  factory AppIconSizes.medium() => const AppIconSizes(
        micro: 24,
        mini: 28,
        tiny: 32,
        small: 40,
        smallMedium: 48,
        medium: 60,
        large: 72,
        xl: 106,
      );

  factory AppIconSizes.expanded() => const AppIconSizes(
        micro: 32,
        mini: 38,
        tiny: 42,
        small: 54,
        smallMedium: 60,
        medium: 80,
        large: 106,
        xl: 140,
      );
}
