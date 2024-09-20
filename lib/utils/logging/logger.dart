// // In Flutter, a logger is typically a tool or library used for logging
// // information during the development and debugging process. Logging is
// // an essential aspect of software development as it helps developers to
// // monitor the behavior of their applications, track errors, and understand
// // the flow of execution. In the context of Flutter, there are several logging
// //libraries available that can be used to achieve this.

// import 'package:logger/logger.dart';

// class MyLogger {
//   static final Logger _logger = Logger(
//     printer: PrettyPrinter(), level: Level.debug,
//     // level: Level.error
//     // level: Level.all
//     // level: Level.info
//   );

//   // debug logger
//   static void debug(String message) {
//     _logger.d(message);
//   }

//   // Info Logger
//   static void info(String message) {
//     _logger.i(message);
//   }

//   //Warning logger
//   static void warning(String message) {
//     _logger.w(message);
//   }

//   //Error Logger
//   static void error(String message, [dynamic error]) {
//     _logger.e(message, error: error, stackTrace: StackTrace.current);
//   }
// }
