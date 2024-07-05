import 'package:meta/meta.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'config.g.dart';

@Riverpod(keepAlive: true)
Config config(ConfigRef ref) {
  throw UnimplementedError();
}

/// Configuration for an application.
@immutable
abstract class Config {
  const Config();

  // Create your env factories here.
  // Edit if flavors name is differente
  factory Config.dev() => _DevConfig();
  // factory Config.staging() => _StagingConfig();
  // factory Config.prod() => _ProdConfig();

  /// Example of common property.
  String get authority;
}

// Create your env configs here or in a separate file for each env.
class _DevConfig implements Config {
  @override
  String get authority => 'https://dev.com';
}

// class _StagingConfig implements Config {
//   @override
//   String get authority => 'https://staging.com';
// }

// class _ProdConfig implements Config {
//   @override
//   String get authority => 'https://prod.com';
// }
