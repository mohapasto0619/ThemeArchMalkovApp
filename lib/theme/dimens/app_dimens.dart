import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malkovapp/theme/dimens/app_icon_sizes.dart';
import 'package:malkovapp/theme/dimens/app_padding.dart';
import 'package:malkovapp/theme/dimens/app_radius.dart';
import 'package:malkovapp/theme/dimens/app_spacing.dart';

part 'app_dimens.freezed.dart';

@freezed
class AppDimens with _$AppDimens {
  const factory AppDimens({
    required AppPaddingTheme paddings,
    required AppSpacingTheme spacings,
    required AppRadiusTheme radius,
    required AppIconSizes iconSizes,
  }) = _AppDimens;

  factory AppDimens.compact() => AppDimens(
        paddings: AppPaddingTheme.compact(),
        spacings: AppSpacingTheme.compact(),
        radius: AppRadiusTheme.regular(),
        iconSizes: AppIconSizes.compact(),
      );

  factory AppDimens.medium() => AppDimens(
        paddings: AppPaddingTheme.medium(),
        spacings: AppSpacingTheme.medium(),
        radius: AppRadiusTheme.regular(),
        iconSizes: AppIconSizes.medium(),
      );

  factory AppDimens.expanded() => AppDimens(
        paddings: AppPaddingTheme.expanded(),
        spacings: AppSpacingTheme.expanded(),
        radius: AppRadiusTheme.regular(),
        iconSizes: AppIconSizes.expanded(),
      );
}

extension BuildContextExt on BuildContext {
  AppDimens get handleDimensSize {
    final size = MediaQuery.sizeOf(this);
    if (size.width <= 600) {
      return AppDimens.compact();
    } else if (size.width > 600 && size.width < 840) {
      return AppDimens.medium();
    } else {
      return AppDimens.expanded();
    }
  }
}
