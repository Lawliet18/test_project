import 'dart:ui';

class LocalizationPreferences {
  static const String path = 'assets/translations';
  static const Locale enLocale = Locale('en');
  static const Locale ukLocale = Locale('uk');
  static const List<Locale> supportedLocales = [
    enLocale,
    ukLocale,
  ];
  static const Locale fallbackLocale = enLocale;

  const LocalizationPreferences._();
}
