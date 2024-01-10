import 'dart:async';
import 'dart:developer';
import 'dart:isolate';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:test_app/core/localization/localization_preferences.dart';
import 'package:test_app/dependency_injector.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(Widget Function() builder) async {
  await EasyLocalization.ensureInitialized();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  // Add cross-flavor configuration here
  await _initCrashlytics();
  DependencyInjector.inject();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    EasyLocalization(
      path: LocalizationPreferences.path,
      supportedLocales: LocalizationPreferences.supportedLocales,
      fallbackLocale: LocalizationPreferences.fallbackLocale,
      child: builder(),
    ),
  );
}

Future<void> _initCrashlytics() async {
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  // Pass all uncaught asynchronous errors that aren't handled by the
  // Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  // To catch errors that happen outside of the Flutter context
  Isolate.current.addErrorListener(
    RawReceivePort((List<dynamic> pair) async {
      if (pair.length > 1 && pair.last is StackTrace) {
        final exception = pair.first;
        final stackTrace = pair.last as StackTrace;
        await FirebaseCrashlytics.instance.recordError(
          exception,
          stackTrace,
          fatal: true,
        );
      }
    }).sendPort,
  );
  await FirebaseCrashlytics.instance
      .setCrashlyticsCollectionEnabled(!kDebugMode);
}
