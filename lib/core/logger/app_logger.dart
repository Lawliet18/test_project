import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:test_app/core/logger/console_log_output.dart';
import 'package:test_app/core/logger/crashlytics_log_output.dart';

class AppLogger extends Logger {
  static final AppLogger instance =
      kDebugMode ? AppLogger._console() : AppLogger._crashlytics();

  AppLogger._console()
      : super(
          printer: PrettyPrinter(colors: false),
          output: ConsoleLogOutput(
            prefix: '\n',
            linesSeparator: '\n',
          ),
        );

  AppLogger._crashlytics()
      : super(
          filter: ProductionFilter(),
          printer: SimplePrinter(
            printTime: false,
            colors: false,
          ),
          output: CrashlyticsLogOutput(),
        );
}
