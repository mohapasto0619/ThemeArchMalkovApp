import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:malkovapp/theme/app_theme_data.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: AppThemeData.of(context)!.appColorTheme.background,
      body: Center(
          child: Container(
        color: AppThemeData.of(context)!.appColorTheme.primary,
        padding:
            EdgeInsets.all(AppThemeData.of(context)!.appDimens.paddings.base),
        child: Text(
          localizations.hello,
        ),
      )),
    );
  }
}
