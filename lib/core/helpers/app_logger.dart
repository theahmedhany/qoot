import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

class AppLogger {
  // Logs a message only in debug mode.
  static void log(String message, {String name = 'APP_LOGGER'}) {
    if (kDebugMode) {
      developer.log(message, name: name);
    }
  }
}
