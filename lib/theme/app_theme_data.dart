import 'package:flutter/material.dart';
import 'package:malkovapp/theme/animations/app_animations.dart';
import 'package:malkovapp/theme/colors/app_colors.dart';
import 'package:malkovapp/theme/dimens/app_dimens.dart';
import 'package:malkovapp/theme/typo/app_text_styles.dart';

class AppThemeData extends InheritedWidget {
  const AppThemeData({
    super.key,
    required this.appColorTheme,
    required this.appTextTheme,
    required this.appDimens,
    required this.appAnimations,
    required super.child,
  });

  final AppColorTheme appColorTheme;
  final AppTextTheme appTextTheme;
  final AppDimens appDimens;
  final AppAnimationTheme appAnimations;

  static AppThemeData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppThemeData>();
  }

  @override
  bool updateShouldNotify(AppThemeData oldWidget) {
    return oldWidget.appColorTheme != appColorTheme ||
        oldWidget.appTextTheme != appTextTheme ||
        oldWidget.appDimens != appDimens ||
        oldWidget.appAnimations != appAnimations;
  }
}
