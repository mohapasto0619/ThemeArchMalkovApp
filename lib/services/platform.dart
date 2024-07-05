import 'dart:io';
import 'package:flutter/foundation.dart';

/// A service that gives getter to check the platform.
///
/// Why a Class better than only global variables ?
///
/// This allows you to mock the class and to make your code testable.
class PlatformService {
  const PlatformService();

  bool get isWeb => kIsWeb;
  bool get isMobile => !isWeb && (Platform.isIOS || Platform.isAndroid);
  bool get isDesktop =>
      !isWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux);
  bool get isIOS => !isWeb && Platform.isIOS;
  bool get isApple => !isWeb && (Platform.isIOS || Platform.isMacOS);
  bool get isAndroid => !isWeb && Platform.isAndroid;
  bool get isGoogle => !isWeb && (Platform.isAndroid || Platform.isFuchsia);
}
