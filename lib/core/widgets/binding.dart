import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:malkovapp/core/config/config.dart';
import 'package:malkovapp/modules/app/app.dart';
import 'package:obs_foundation/obs_foundation.dart';

Future<void> run(Config _config) async {
  // Initialize the loggers.
  initLoggers([
    ConsoleLogger(),
    // Add other loggers here.
  ]);
  final config = _config;
  runApp(
    ProviderScope(
      overrides: [
        configProvider.overrideWithValue(
          config,
        ),
      ],
      child: const App(),
    ),
  );
}
