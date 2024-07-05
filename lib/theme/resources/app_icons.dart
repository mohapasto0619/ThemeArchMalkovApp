import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Icons used in the app.
class AppIcons {
  AppIcons._();

  static const IconData add = _AppIconData(0x0061);
  static const IconData addImage = _AppIconData(0x0062);
  static const IconData calendar = _AppIconData(0x0063);
  static const IconData cancel = _AppIconData(0x0064);
  static const IconData check = _AppIconData(0x0065);
  static const IconData closed = _AppIconData(0x0066);
  static const IconData thumbUp = _AppIconData(0x0067);
  static const IconData arrowDown = _AppIconData(0x0068);
  static const IconData edit = _AppIconData(0x0069);
  static const IconData go = _AppIconData(0x006A);
  static const IconData help = _AppIconData(0x006B);
  static const IconData info = _AppIconData(0x006C);
  static const IconData more = _AppIconData(0x006D);
  static const IconData back = _AppIconData(0x006E);
  static const IconData navBarAccount = _AppIconData(0x006F);
  static const IconData navBarCards = _AppIconData(0x0070);
  static const IconData navBarHistory = _AppIconData(0x0071);
  static const IconData navBarHome = _AppIconData(0x0072);
  static const IconData arrowRight = _AppIconData(0x0073);
  static const IconData arrowLeft = _AppIconData(0x0074);
  static const IconData star = _AppIconData(0x0075);
  static const IconData arrowUp = _AppIconData(0x0076);
  static const IconData warning = _AppIconData(0x0077);
}

class _AppIconData extends IconData {
  const _AppIconData(int codePoint)
      : super(
          codePoint,
          fontFamily: 'app_icons',
        );
}
