import 'package:flutter/material.dart';
import 'package:malkovapp/theme/animations/app_animations.dart';
import 'package:malkovapp/theme/colors/app_colors.dart';
import 'package:malkovapp/theme/dimens/app_dimens.dart';
import 'package:malkovapp/theme/dimens/app_icon_sizes.dart';
import 'package:malkovapp/theme/dimens/app_padding.dart';
import 'package:malkovapp/theme/dimens/app_radius.dart';
import 'package:malkovapp/theme/dimens/app_spacing.dart';
import 'package:malkovapp/theme/typo/app_text_styles.dart';

enum _AppThemeType {
  color,
  text,
  dimens,
  animation,
}

class AppThemeData extends InheritedModel<_AppThemeType> {
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

  static AppThemeData of(BuildContext context) {
    final theme = context.dependOnInheritedWidgetOfExactType<AppThemeData>();
    assert(
      theme != null,
      'No AppThemeData widget ancestor found.',
    );

    return theme!;
  }

  static AppColorTheme colorsOf(BuildContext context) {
    final color = InheritedModel.inheritFrom<AppThemeData>(
      context,
      aspect: _AppThemeType.color,
    )?.appColorTheme;
    assert(
      color != null,
      'No AppThemeData widget ancestor found.',
    );

    return color!;
  }

  static AppTextTheme textsOf(BuildContext context) {
    final text = InheritedModel.inheritFrom<AppThemeData>(
      context,
      aspect: _AppThemeType.text,
    )?.appTextTheme;
    assert(
      text != null,
      'No AppThemeData widget ancestor found.',
    );

    return text!;
  }

  static AppAnimationTheme animationsOf(BuildContext context) {
    final animation = InheritedModel.inheritFrom<AppThemeData>(
      context,
      aspect: _AppThemeType.animation,
    )?.appAnimations;
    assert(
      animation != null,
      'No AppThemeData widget ancestor found.',
    );

    return animation!;
  }

  static AppDimens dimensOf(BuildContext context) {
    final dimens = InheritedModel.inheritFrom<AppThemeData>(
      context,
      aspect: _AppThemeType.dimens,
    )?.appDimens;
    assert(
      dimens != null,
      'No AppThemeData widget ancestor found.',
    );

    return dimens!;
  }

  @override
  bool updateShouldNotify(AppThemeData oldWidget) {
    return oldWidget.appColorTheme != appColorTheme ||
        oldWidget.appTextTheme != appTextTheme ||
        oldWidget.appDimens != appDimens ||
        oldWidget.appAnimations != appAnimations;
  }

  @override
  bool updateShouldNotifyDependent(
    covariant AppThemeData oldWidget,
    Set<_AppThemeType> dependencies,
  ) {
    return (oldWidget.appColorTheme != appColorTheme &&
            dependencies.contains(_AppThemeType.color)) ||
        (oldWidget.appTextTheme != appTextTheme &&
            dependencies.contains(_AppThemeType.text)) ||
        (oldWidget.appDimens != appDimens &&
            dependencies.contains(_AppThemeType.dimens)) ||
        (oldWidget.appAnimations != appAnimations &&
            dependencies.contains(_AppThemeType.animation));
  }
}

extension BuildContextExt on BuildContext {
  AppThemeData get themes => AppThemeData.of(this);

  AppColorTheme get colors => AppThemeData.colorsOf(this);

  AppTextTheme get styles => AppThemeData.textsOf(this);

  AppAnimationTheme get animations => AppThemeData.animationsOf(this);

  AppDimens get dimens => AppThemeData.dimensOf(this);

  AppRadiusTheme get radius => AppThemeData.dimensOf(this).radius;

  AppPaddingTheme get paddings => AppThemeData.dimensOf(this).paddings;

  AppSpacingTheme get spacings => AppThemeData.dimensOf(this).spacings;

  AppIconSizes get iconSizes => AppThemeData.dimensOf(this).iconSizes;
}
