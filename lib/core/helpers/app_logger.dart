import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  //! ---> log message
  static void log(String message) {
    _logger.d(message);
  }

  //! ---> info message
  static void info(String message) {
    _logger.i(message);
  }

  //! ---> warning message
  static void warning(String message) {
    _logger.w(message);
  }

  //! ---> error message
  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
