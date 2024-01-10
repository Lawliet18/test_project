import 'dart:developer';

import 'package:logger/logger.dart';

class ConsoleLogOutput extends LogOutput {
  final String prefix;
  final String linesSeparator;

  ConsoleLogOutput({
    this.prefix = '',
    this.linesSeparator = '',
  });

  @override
  void output(OutputEvent event) {
    log('$prefix${event.lines.join(linesSeparator)}');
  }
}
