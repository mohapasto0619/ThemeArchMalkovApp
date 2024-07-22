import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_text_styles.freezed.dart';

/// The textStyles theme of the app.
Provider<AppTextTheme> textThemeProvider = Provider<AppTextTheme>((ref) {
  return AppTextTheme.regular();
});

@freezed
class AppTextTheme with _$AppTextTheme {
  const factory AppTextTheme({
    required AppTextStyle pageTitle,
    required AppTextStyle pageSubtitle,
  }) = _AppTextTheme;
  const AppTextTheme._();

  // The default text theme
  factory AppTextTheme.regular() => AppTextTheme(
        pageTitle: AppTextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
        pageSubtitle: AppTextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      );

  factory AppTextTheme.large() => AppTextTheme(
        pageTitle: AppTextStyle(
          fontSize: 42,
          fontWeight: FontWeight.w600,
        ),
        pageSubtitle: AppTextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w400,
        ),
      );
}

class AppTextStyle {
  AppTextStyle({
    this.fontFamily = defaultFontFamily,
    this.fontSize,
    this.fontWeight,
    this.letterSpacing,
  });

  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? letterSpacing;

  static const defaultFontFamily = '.SF Pro Text';

  TextStyle withColor(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
      );
}

extension TextStyleExtension on TextStyle {
  TextStyle get normal => copyWith(fontWeight: FontWeight.normal);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w500);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle withOpacity(double opacity) => copyWith(
        color: color?.withOpacity(opacity),
      );
}

extension BuildContextExt on BuildContext {
  AppTextTheme get handleTextSize {
    final size = MediaQuery.sizeOf(this);
    if (size.width <= 600) {
      return AppTextTheme.regular();
    } else if (size.width > 600 && size.width < 840) {
      return AppTextTheme.regular();
    } else {
      return AppTextTheme.large();
    }
  }
}
