// ignore_for_file: deprecated_member_use

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';

class CrashlyticsLogOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    switch (event.level) {
      case Level.trace:
      case Level.verbose:
      case Level.debug:
      case Level.info:
      case Level.warning:
      case Level.off:
      case Level.nothing:
      case Level.all:
        FirebaseCrashlytics.instance.log(event.lines.join('\n'));
        break;
      case Level.error:
      case Level.fatal:
      case Level.wtf:
        FirebaseCrashlytics.instance.recordError(
          event.origin.error,
          event.origin.stackTrace,
          information: [event.origin.message.toString()],
        );
        break;
    }
  }
}
