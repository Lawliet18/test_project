// ignore_for_file: deprecated_member_use

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:test_app/core/logger/console_log_output.dart';
import 'package:test_app/core/logger/crashlytics_log_output.dart';

class AseelDioLogger extends Logger {
  static final AseelDioLogger instance =
      kDebugMode ? AseelDioLogger._console() : AseelDioLogger._crashlytics();

  AseelDioLogger._console()
      : super(
          printer: PrefixPrinter(
            SimplePrinter(colors: false),
            debug: '🐛 DEBUG',
            verbose: 'VERBOSE',
            trace: 'TRACE',
            wtf: '👾 WTF',
            info: '💡 INFO',
            warning: '⚠️ WARNING',
            error: '⛔ ERROR',
            fatal: '👾 FATAL',
          ),
          output: ConsoleLogOutput(),
        );

  AseelDioLogger._crashlytics()
      : super(
          filter: ProductionFilter(),
          printer: SimplePrinter(
            printTime: false,
            colors: false,
          ),
          output: CrashlyticsLogOutput(),
          level: Level.error,
        );
}
