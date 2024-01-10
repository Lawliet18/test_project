import 'package:firebase_analytics/firebase_analytics.dart';

class Analytics {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  Future<void> logOpenApp() {
    return _analytics.logAppOpen();
  }

  Future<void> logEvent(String name, {Map<String, dynamic>? parameters}) {
    return _analytics.logEvent(name: name, parameters: parameters);
  }
}
