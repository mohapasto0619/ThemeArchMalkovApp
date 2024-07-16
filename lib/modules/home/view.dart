import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:malkovapp/theme/app_theme_data.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final colors = context.colors;
    final paddings = context.paddings;
    final styles = context.styles;

    return Scaffold(
      backgroundColor: colors.background,
      body: Center(
        child: Container(
          color: colors.primary,
          padding: EdgeInsets.all(paddings.base),
          child: Text(
            localizations.hello,
            style: styles.pageSubtitle.withColor(colors.buttonText),
          ),
        ),
      ),
    );
  }
}
