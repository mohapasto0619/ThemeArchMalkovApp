import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:malkovapp/router/app_router.dart';
import 'package:malkovapp/theme/animations/app_animations.dart';
import 'package:malkovapp/theme/app_theme_data.dart';
import 'package:malkovapp/theme/colors/app_colors.dart';
import 'package:malkovapp/theme/dimens/app_dimens.dart';
import 'package:malkovapp/theme/typo/app_text_styles.dart';

class App extends ConsumerWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    return Builder(
      builder: (context) {
        return AppThemeData(
          appColorTheme: handleTheme(
            context,
          ),
          appTextTheme: handleTextSize(
            context: context,
          ),
          appDimens: handleDimensSize(
            context: context,
          ),
          appAnimations: AppAnimationTheme.normal(),
          child: MaterialApp.router(
            routerConfig: appRouter,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
          ),
        );
      },
    );
  }
}
